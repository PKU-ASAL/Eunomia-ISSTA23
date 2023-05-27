#ifndef NAVSPARSER_TRANSFORMER_H
#define NAVSPARSER_TRANSFORMER_H

#include "global.h"
#include "NavSParser.h"

class NameCollector : public RecursiveASTVisitor<NameCollector> {
public:
    set<string> names;
    bool VisitDeclRefExpr(DeclRefExpr* expr)  { names.insert(expr->getNameInfo().getAsString()); return true; }
    bool VisitIntegerLiteral(IntegerLiteral* expr) { names.insert(std::to_string(*expr->getValue().getRawData())); return true; }
};


static vector<desc> allinfos;

class ASTVisitor : public RecursiveASTVisitor<ASTVisitor> {
public:
    ASTContext *ctx;
    void add(SourceRange loc, string t, string id){
        if(ctx->getSourceManager().isInSystemHeader(loc.getBegin()) || loc.isInvalid()) return ;
        string tmp = t + "_" + id;
        int idx = PredManager::insert_pred(tmp);
        allinfos.emplace_back(loc, idx);
    }
    void add(SourceRange loc, string t, set<string>& ids) { for(auto &s : ids) add(loc, t, s); }
    bool VisitReturnStmt(ReturnStmt* rstmt) {
        auto* coll = new NameCollector();
        coll->TraverseStmt(rstmt->getRetValue()), add(rstmt->getReturnLoc(), "ouse", coll->names); return true;
    }
    bool VisitVarDecl(VarDecl* decl) {
        if(decl->hasDefinition() == VarDecl::Definition) {
            add(decl->getLocation(), "def", decl->getDeclName().getAsString());
        }
        return true;
    }
    bool VisitArraySubscriptExpr(ArraySubscriptExpr* expr){
        auto* coll = new NameCollector();
        coll->TraverseArraySubscriptExpr(expr), add(expr->getSourceRange(), "luse", coll->names); return true;
    }
    bool VisitBinaryOperator(BinaryOperator *bop)  {
        NameCollector coll1, coll2;
        coll1.TraverseStmt(bop->getLHS()), coll2.TraverseStmt(bop->getRHS());
        set<string> lvar = coll1.names, rvar = coll2.names;
        SourceRange loc = bop->getSourceRange();
        if(bop->isAssignmentOp() || bop->isCompoundAssignmentOp() || bop->isShiftAssignOp()) {
            add(bop->getOperatorLoc(), "def", lvar);
        }
        if(bop->isLogicalOp() || bop->isRelationalOp() || bop->isComparisonOp() || bop->isEqualityOp()) {
            add(bop->getLHS()->getExprLoc(), "puse", lvar);
            add(bop->getRHS()->getExprLoc(), "puse", rvar);
        }
        if(bop->isAdditiveOp() || bop->isMultiplicativeOp() || bop->isBitwiseOp() || bop->isShiftOp()
           || bop->isCompoundAssignmentOp() || bop->isShiftAssignOp()) {
            add(bop->getLHS()->getExprLoc(), "cuse", lvar);
            add(bop->getRHS()->getExprLoc(), "cuse", rvar);
           // string op = bop->getOpcodeStr();
            add(bop->getOperatorLoc(), "call", bop->getOpcodeStr().str()); 
        }
        return true;
    }
    bool VisitUnaryOperator(UnaryOperator *uop) {
        SourceRange loc = uop->getSourceRange();
        auto* coll = new NameCollector();
        coll->TraverseUnaryOperator(const_cast<UnaryOperator *>(uop));
        set<string> var = coll->names;
        if(uop->isArithmeticOp()) add(loc, "cuse", var); // +, -, ~, !
        if(uop->isIncrementDecrementOp()) add(loc, "def", var), add(loc, "cuse", var); // ++, --
        if(uop->getOpcode() == UO_LNot) add(loc, "puse", var); // !
        if(uop->getOpcode() == UO_AddrOf || uop->getOpcode() == UO_Deref) add(loc, "luse", var), add(loc, "cuse", var); // &, *
        return true;
    }
    bool VisitFunctionDecl(FunctionDecl *decl) {
        add(decl->getSourceRange(), "func", decl->getNameAsString()); return true;
    }
    bool VisitCallExpr(CallExpr* call) {
        const FunctionDecl* calleeDecl = call->getDirectCallee();
        std::string name;
        if(calleeDecl != nullptr){
            name = calleeDecl->getNameAsString();
        } else {
            if(isa<CXXMemberCallExpr>(call)){
                name = dyn_cast<CXXMemberCallExpr>(call)->getMethodDecl()->getNameAsString();
            } else if(isa<UserDefinedLiteral>(call)){
                name = dyn_cast<UserDefinedLiteral>(call)->getUDSuffix()->getName().data();
            } else if(isa<CXXOperatorCallExpr>(call)){
                name = clang::getOperatorSpelling(dyn_cast<CXXOperatorCallExpr>(call)->getOperator());
            }
        }
        add(call->getCallee()->getSourceRange(), "call", name);
        auto* coll = new NameCollector();
        for(auto *arg : call->arguments()) { coll->TraverseStmt((Stmt*)arg); add(arg->getSourceRange(), "ause", coll->names); }
        return true;
    }
};

class MyASTConsumer : public ASTConsumer {
public:

    void HandleTranslationUnit(ASTContext &ctx) override {
        visitor.ctx = &ctx;
        visitor.TraverseDecl(ctx.getTranslationUnitDecl());
    }
private:
    ASTVisitor visitor;
};

class MyFrontendAction : public ASTFrontendAction {
public:
    static set<StubInfo> res;
    static map<string, string> exprs;
    static NavSParser *parser;
    void EndSourceFileAction() override {
        vector<z3::expr> kb;
        vector<desc> mergedinfos;
        for(auto &it : allinfos) {
            z3::expr e = PredManager::get(it.second);
            SourceRange it_char_range = mgr->getExpansionRange(it.first).getAsRange();
            for(auto &ite : allinfos){
                SourceRange ite_char_range = mgr->getExpansionRange(ite.first).getAsRange();
                if(ite.first.fullyContains(it.first) || ite_char_range.fullyContains(it_char_range))
                    e = e && PredManager::get(ite.second);
            }
            mergedinfos.emplace_back(it.first, kb.size());
            kb.push_back(e.simplify());
        }
        z3::solver s(PredManager::ctx());
        bool flag = true;
        for(auto &stub : parser->advs) {
            z3::expr stub_loc = PredManager::get(parser->conds[stub.first]);
            for(auto &adv : stub.second) {
                set<string> var_from_src = parser->used_vars[stub.first][adv.first];
                z3::expr adv_loc = PredManager::get(adv.second.first);
                //args : adv.second.second.first;
                //llvm::outs() << adv.second.second.first.size() << "\n";
                for(auto &v : parser->vars[stub.first]){
                    if(var_from_src.count(v.first) > 0) var_from_src.erase(v.first);
                }
                for(auto &it : mergedinfos) {
                    s.reset();
                    z3::expr conj = kb[it.second] && !(adv_loc && stub_loc);
                    //if(flag) llvm::outs() << it.first.printToString(*mgr) << " " << kb[it.second].to_string() << "\n";
                    s.add(conj);
                    if(s.check() == z3::unsat && it.first.isValid()) {
                        PresumedLoc begin_loc = mgr->getPresumedLoc(it.first.getBegin());
                        PresumedLoc end_loc = mgr->getPresumedLoc(it.first.getEnd());
                        res.insert({stub.first, adv.first,
                                    begin_loc.getFilename(), begin_loc.getLine(), begin_loc.getColumn(),
                                    end_loc.getLine(), end_loc.getColumn(), adv.second.second.first,adv.second.second.second});
                    }
                }
                flag = false;
            }
        }
    }
    std::unique_ptr<ASTConsumer> CreateASTConsumer(CompilerInstance &CI, StringRef file) override {
        mgr = &CI.getSourceManager();
        return make_unique<MyASTConsumer>();
    }
private:
    SourceManager *mgr;
};

NavSParser* MyFrontendAction::parser;
set<StubInfo> MyFrontendAction::res;
map<string, string> MyFrontendAction::exprs;

#endif //NAVSPARSER_TRANSFORMER_H
