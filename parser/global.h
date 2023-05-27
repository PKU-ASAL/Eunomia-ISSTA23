#pragma once
#ifndef NAVSPARSER_GLOBAL_H
#define NAVSPARSER_GLOBAL_H

#include <set>
#include <map>
#include <z3++.h>
#include <string>
#include <utility>
#include <vector>
#include <utility>
#include <algorithm>
#include <antlr4-runtime.h>

#include <clang/AST/AST.h>
#include <clang/AST/ASTConsumer.h>
#include <clang/AST/RecursiveASTVisitor.h>
#include <clang/Tooling/Tooling.h>
#include <clang/Tooling/JSONCompilationDatabase.h>
#include <clang/Basic/Diagnostic.h>
#include <clang/Basic/LangOptions.h>
#include <clang/Basic/TargetInfo.h>
#include <clang/Basic/DiagnosticOptions.h>
#include <clang/CodeGen/CodeGenAction.h>
#include <clang/Frontend/FrontendActions.h>
#include <clang/Frontend/CompilerInstance.h>
#include <clang/Frontend/CompilerInvocation.h>
#include <clang/Frontend/TextDiagnosticPrinter.h>

#include <llvm/IR/Module.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include <llvm/Support/raw_ostream.h>

#include <boost/algorithm/string.hpp>

using namespace std;
using namespace clang;
typedef set<int> args;
typedef pair<args, string> stmt;
typedef pair<int, stmt> advice;
typedef tuple<string, int, string, unsigned int, unsigned int, unsigned int, unsigned int, args, string> StubInfo;
typedef pair<SourceRange, int> desc;


class PredManager {
public:
    static int insert_expr(z3::expr e) {
        m()->es.push_back(e); return m()->es.size() - 1;
    }
    static int insert_pred(string n) {
        auto it = m()->s2e.find(n);
        int idx = it != m()->s2e.end() ? it->second : m()->es.size();
        if(it == m()->s2e.end()){
            m()->s2e[n] = idx;
            m()->es.push_back(ctx().bool_const(n.c_str()));
        }
        return idx;
    }
    static z3::expr get(int id) { return m()->es[id]; }
    static PredManager* m() { static PredManager *m = nullptr; if(m == nullptr) m = new PredManager(); return m; }
    static z3::context& ctx() {return m()->_ctx; }
private:
    PredManager() {}
    vector<z3::expr> es;
    map<string, int> s2e;
    z3::context _ctx;
};

#endif //NAVSPARSER_GLOBAL_H
