
// Generated from NavSParser.g4 by ANTLR 4.9.2

#pragma once


#include "antlr4-runtime.h"
#include "NavSParser.h"


/**
 * This interface defines an abstract listener for a parse tree produced by NavSParser.
 */
class  NavSParserListener : public antlr4::tree::ParseTreeListener {
public:

  virtual void enterCompilationUnit(NavSParser::CompilationUnitContext *ctx) = 0;
  virtual void exitCompilationUnit(NavSParser::CompilationUnitContext *ctx) = 0;

  virtual void enterVarDef(NavSParser::VarDefContext *ctx) = 0;
  virtual void exitVarDef(NavSParser::VarDefContext *ctx) = 0;

  virtual void enterPilotDef(NavSParser::PilotDefContext *ctx) = 0;
  virtual void exitPilotDef(NavSParser::PilotDefContext *ctx) = 0;

  virtual void enterAdviceList(NavSParser::AdviceListContext *ctx) = 0;
  virtual void exitAdviceList(NavSParser::AdviceListContext *ctx) = 0;

  virtual void enterAdviceDef(NavSParser::AdviceDefContext *ctx) = 0;
  virtual void exitAdviceDef(NavSParser::AdviceDefContext *ctx) = 0;

  virtual void enterLocE(NavSParser::LocEContext *ctx) = 0;
  virtual void exitLocE(NavSParser::LocEContext *ctx) = 0;

  virtual void enterStmtList(NavSParser::StmtListContext *ctx) = 0;
  virtual void exitStmtList(NavSParser::StmtListContext *ctx) = 0;

  virtual void enterExprList(NavSParser::ExprListContext *ctx) = 0;
  virtual void exitExprList(NavSParser::ExprListContext *ctx) = 0;

  virtual void enterExpr(NavSParser::ExprContext *ctx) = 0;
  virtual void exitExpr(NavSParser::ExprContext *ctx) = 0;

  virtual void enterPrimary(NavSParser::PrimaryContext *ctx) = 0;
  virtual void exitPrimary(NavSParser::PrimaryContext *ctx) = 0;

  virtual void enterUop(NavSParser::UopContext *ctx) = 0;
  virtual void exitUop(NavSParser::UopContext *ctx) = 0;

  virtual void enterBop(NavSParser::BopContext *ctx) = 0;
  virtual void exitBop(NavSParser::BopContext *ctx) = 0;

  virtual void enterLocType(NavSParser::LocTypeContext *ctx) = 0;
  virtual void exitLocType(NavSParser::LocTypeContext *ctx) = 0;

  virtual void enterLiteral(NavSParser::LiteralContext *ctx) = 0;
  virtual void exitLiteral(NavSParser::LiteralContext *ctx) = 0;


};

