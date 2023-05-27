#include "global.h"
#include "NavSParser.h"
#include "NavSLexer.h"
#include "trans.h"
#include <boost/filesystem.hpp>

#ifndef ROOT_DIR
#define ROOT_DIR "."
#endif

using namespace antlr4;
using namespace std;
using namespace clang::tooling;
using namespace boost;

NavSParser *parser;

void parse_navl(const char *fname)
{
    ifstream stream;
    stream.open(fname);
    ANTLRInputStream code(stream);
    NavSLexer lexer(&code);
    CommonTokenStream tokens(&lexer);
    parser = new NavSParser(&tokens);
    parser->compilationUnit();
}

int main(int argc, char **argv)
{
    if (argc < 4)
    {
        llvm::errs() << "Missing source code or output File Names\n";
        return 1;
    }
    PredManager::insert_expr(PredManager::ctx().bool_val(true));
    parse_navl(argv[1]);
    MyFrontendAction::parser = parser;
    map<string, string> cdb;
    std::string cwd = boost::filesystem::current_path().string();
    cdb["directory"]=cwd;
    cdb["file"]=argv[3];
    cdb["command"]=string("cc -g -I testcases/include ") + cwd + "/" + argv[3];
    string json_string = "[{", err_string; for (auto &it : cdb) json_string += "\"" + it.first + "\":\"" + it.second + "\","; json_string += "}]";
    std::unique_ptr<CompilationDatabase> database = 
        JSONCompilationDatabase::loadFromBuffer(json_string, err_string, JSONCommandLineSyntax::AutoDetect);
    auto sourcefiles = database->getAllFiles();
    ClangTool Tool(*database, database->getAllFiles());
    DiagnosticConsumer *astdiag = new clang::IgnoringDiagConsumer();
    //astdiag = new clang::TextDiagnosticPrinter(llvm::errs(), new DiagnosticOptions());
    Tool.setDiagnosticConsumer(astdiag);
    Tool.run(newFrontendActionFactory<MyFrontendAction>().get());
    auto infos = MyFrontendAction::res;
    unique_ptr<DiagnosticOptions> diagnosticOptions = make_unique<DiagnosticOptions>();
    unique_ptr<TextDiagnosticPrinter> textDiagnosticPrinter =
        make_unique<TextDiagnosticPrinter>(llvm::outs(), diagnosticOptions.get());
    llvm::IntrusiveRefCntPtr<DiagnosticIDs> diagIDs;

    unique_ptr<DiagnosticsEngine> diagnosticsEngine =
        make_unique<DiagnosticsEngine>(diagIDs, diagnosticOptions.release(), textDiagnosticPrinter.get());

    CompilerInstance compilerInstance;
    auto &compilerInvocation = compilerInstance.getInvocation();

    // set target triples;
    std::stringstream ss;
    ss << " -cc1 -triple wasm32-unknown-wasi -mrelax-all ";
    ss << " -disable-free -disable-llvm-verifier -discard-value-names ";
    ss << " -mllvm -treat-scalable-fixed-error-as-warning -debugger-tuning=gdb ";
    ss << " -debug-info-kind=constructor -dwarf-version=4 ";
    ss << " -resource-dir " << ROOT_DIR << "/wasi-sdk/build/wasi-sdk-14.0/lib/clang/13.0.0";
    ss << " -isysroot " << ROOT_DIR << "/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot";
    ss << " -internal-isystem " << ROOT_DIR << "/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/wasm32-wasi/c++/v1";
    ss << " -internal-isystem " << ROOT_DIR << "/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/c++/v1";
    ss << " -internal-isystem " << ROOT_DIR << "/wasi-sdk/build/wasi-sdk-14.0/lib/clang/13.0.0/include";
    ss << " -internal-isystem " << ROOT_DIR << "/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/wasm32-wasi";
    ss << " -internal-isystem " << ROOT_DIR << "/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include";
    ss << " -I " << ROOT_DIR << "/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/wasi/c++/v1";
    ss << " -I " << ROOT_DIR << "/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/c++/v1";
    ss << " -I " << ROOT_DIR << "/wasi-sdk/build/wasi-sdk-14.0/lib/clang/13.0.0/include";
    ss << " -I " << ROOT_DIR << "/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include/wasi";
    ss << " -I " << ROOT_DIR << "/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/include";
    ss << " -I ./testcases/include";
    ss << " -x c ";

    vector<const char *> cargs;
    vector<std::string> itemstrs;
    string s;
    while (ss >> s)
        itemstrs.push_back(s);

    cargs.reserve(itemstrs.size());
    for (auto &itemstr : itemstrs) { cargs.push_back(itemstr.c_str()); }

    CompilerInvocation::CreateFromArgs(compilerInvocation, cargs, *diagnosticsEngine.release());
    auto &frontEndOptions = compilerInvocation.getFrontendOpts();

    string filename = sourcefiles[0];
    boost::trim_if(filename, boost::is_any_of("\""));

    frontEndOptions.Inputs.clear();
    frontEndOptions.Inputs.push_back(FrontendInputFile(filename, InputKind(Language::CXX)));

    compilerInstance.createDiagnostics(textDiagnosticPrinter.get(), false);
    auto *context = new llvm::LLVMContext();
    CodeGenAction *action = new EmitLLVMOnlyAction(context);
    if (!compilerInstance.ExecuteAction(*action))
    {
        llvm::errs() << "failed\n";
        abort();
    }
    map<string, string> guides;
    unique_ptr<llvm::Module> m = action->takeModule();
    set<StubInfo> done;
    for (auto &stub : infos)
    {
        string fn, file, stmt;
        unsigned int bl, bc, el, ec, l, c;
        int pos; bool hasfunc=false;
        args a;
        std::tie(fn, pos, file, bl, bc, el, ec, a, stmt) = stub;
        string fname = fn + "$" + std::to_string(pos);
        guides[fname] = stmt;
        llvm::FunctionCallee func;
        if (a.empty()) {
            func = m->getOrInsertFunction(fname, llvm::FunctionType::getVoidTy(*context));
        }
        set<pair<int, int>> locs;
        llvm::DILocation *Loc;
        for (auto &f : m->functions())
        {
            for (auto &bb : f)
            {
                for (auto &I : bb)
                {
                    if (I.isDebugOrPseudoInst())
                        continue;
                    if ((Loc = I.getDebugLoc()))
                    {
                        l = Loc->getLine(), c = Loc->getColumn();
                        auto p = make_pair(l, c);
                        string fpath = (Loc->getDirectory() + "/" + Loc->getFilename()).str();
                        if (locs.find(p) != locs.end())
                            continue;
                        if (bl <= l && l <= el && bc <= c && c <= ec && boost::filesystem::equivalent(boost::filesystem::path(fpath), boost::filesystem::path(file)))
                        {
                            //llvm::outs() << fname << " now=" << l << " " << c << " need=" << bl << " " << bc << " " << el << " " << ec << "\n";
                            locs.insert(p);
                            vector<llvm::Value *> argsref;
                            vector<llvm::Type *> types;
                            if(isa<llvm::CallInst>(I)) {
                                const llvm::CallInst* CI = cast<llvm::CallInst>(&I);
                                for (auto &k : a) {
                                    argsref.push_back(CI->getOperand(k));
                                    types.push_back(CI->getOperand(k)->getType());
                                }
                            } else {
                                for (auto &k : a) {
                                    if(k == 0) argsref.push_back(&I); else argsref.push_back(I.getOperand(k-1));
                                }
                                for(auto v : argsref) types.push_back(v->getType());
                            }
                            if(!hasfunc) {
                                func = m->getOrInsertFunction(fname, llvm::FunctionType::get(llvm::FunctionType::getVoidTy(*context), types, false));
                                hasfunc=true;
                            }
                            llvm::CallInst *call_inst = llvm::CallInst::Create(func, argsref, "");
                            if (pos >= 0)
                            {
                                call_inst->insertBefore(&I);
                            }
                            else
                            {
                                call_inst->insertAfter(&I);
                            }
                        }
                    }
                }
            }
        }
    }
    std::error_code err = llvm::errorToErrorCode(llvm::Error::success());
    llvm::raw_fd_ostream os(argv[2], err), stmts(string(argv[2])+".stmt", err);
    if (!err)
    {
        m->print(os, nullptr);
        for(auto &it : guides) { stmts << it.first << " ||| " << it.second << "!!!"; }
        stmts.close();
    }
    else
    {
        llvm::errs() << "error when output to file message=" << err.message() << "\n";
    }
    llvm::llvm_shutdown();
}
