
// Generated from NavSParser.g4 by ANTLR 4.9.2

#pragma once


#include "antlr4-runtime.h"
#include "NavSParserListener.h"


/**
 * This class provides an empty implementation of NavSParserListener,
 * which can be extended to create a listener which only needs to handle a subset
 * of the available methods.
 */
class  NavSParserBaseListener : public NavSParserListener {
public:

  virtual void enterCompilationUnit(NavSParser::CompilationUnitContext * /*ctx*/) override { }
  virtual void exitCompilationUnit(NavSParser::CompilationUnitContext * /*ctx*/) override { }

  virtual void enterVarDef(NavSParser::VarDefContext * /*ctx*/) override { }
  virtual void exitVarDef(NavSParser::VarDefContext * /*ctx*/) override { }

  virtual void enterPilotDef(NavSParser::PilotDefContext * /*ctx*/) override { }
  virtual void exitPilotDef(NavSParser::PilotDefContext * /*ctx*/) override { }

  virtual void enterAdviceList(NavSParser::AdviceListContext * /*ctx*/) override { }
  virtual void exitAdviceList(NavSParser::AdviceListContext * /*ctx*/) override { }

  virtual void enterAdviceDef(NavSParser::AdviceDefContext * /*ctx*/) override { }
  virtual void exitAdviceDef(NavSParser::AdviceDefContext * /*ctx*/) override { }

  virtual void enterLocE(NavSParser::LocEContext * /*ctx*/) override { }
  virtual void exitLocE(NavSParser::LocEContext * /*ctx*/) override { }

  virtual void enterStmtList(NavSParser::StmtListContext * /*ctx*/) override { }
  virtual void exitStmtList(NavSParser::StmtListContext * /*ctx*/) override { }

  virtual void enterExprList(NavSParser::ExprListContext * /*ctx*/) override { }
  virtual void exitExprList(NavSParser::ExprListContext * /*ctx*/) override { }

  virtual void enterExpr(NavSParser::ExprContext * /*ctx*/) override { }
  virtual void exitExpr(NavSParser::ExprContext * /*ctx*/) override { }

  virtual void enterPrimary(NavSParser::PrimaryContext * /*ctx*/) override { }
  virtual void exitPrimary(NavSParser::PrimaryContext * /*ctx*/) override { }

  virtual void enterUop(NavSParser::UopContext * /*ctx*/) override { }
  virtual void exitUop(NavSParser::UopContext * /*ctx*/) override { }

  virtual void enterBop(NavSParser::BopContext * /*ctx*/) override { }
  virtual void exitBop(NavSParser::BopContext * /*ctx*/) override { }

  virtual void enterLocType(NavSParser::LocTypeContext * /*ctx*/) override { }
  virtual void exitLocType(NavSParser::LocTypeContext * /*ctx*/) override { }

  virtual void enterLiteral(NavSParser::LiteralContext * /*ctx*/) override { }
  virtual void exitLiteral(NavSParser::LiteralContext * /*ctx*/) override { }


  virtual void enterEveryRule(antlr4::ParserRuleContext * /*ctx*/) override { }
  virtual void exitEveryRule(antlr4::ParserRuleContext * /*ctx*/) override { }
  virtual void visitTerminal(antlr4::tree::TerminalNode * /*node*/) override { }
  virtual void visitErrorNode(antlr4::tree::ErrorNode * /*node*/) override { }

};

