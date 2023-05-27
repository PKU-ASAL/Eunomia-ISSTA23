
// Generated from NavSParser.g4 by ANTLR 4.9.2

#pragma once


#include "antlr4-runtime.h"


    #include "global.h"




class  NavSParser : public antlr4::Parser {
public:
  enum {
    VAR = 1, FUNC = 2, DEF = 3, AUSE = 4, PUSE = 5, CUSE = 6, OUSE = 7, 
    LUSE = 8, CALL = 9, AND = 10, OR = 11, NOT = 12, PRE = 13, POST = 14, 
    ARGSYM = 15, LPAREN = 16, RPAREN = 17, LBRACE = 18, RBRACE = 19, LBRACK = 20, 
    RBRACK = 21, SEMI = 22, COMMA = 23, DOT = 24, ASSIGN = 25, GT = 26, 
    LT = 27, BANG = 28, IF = 29, ELSE = 30, COLON = 31, EQUAL = 32, LE = 33, 
    GE = 34, NOTEQUAL = 35, ADD = 36, SUB = 37, MUL = 38, DIV = 39, MOD = 40, 
    ADD_ASSIGN = 41, SUB_ASSIGN = 42, MUL_ASSIGN = 43, DIV_ASSIGN = 44, 
    MOD_ASSIGN = 45, BOOL_LITERAL = 46, DECIMAL_LITERAL = 47, FLOAT_LITERAL = 48, 
    CHAR_LITERAL = 49, STRING_LITERAL = 50, WS = 51, COMMENT = 52, LINE_COMMENT = 53, 
    IDENTIFIER = 54, ARG = 55
  };

  enum {
    RuleCompilationUnit = 0, RuleVarDef = 1, RulePilotDef = 2, RuleAdviceList = 3, 
    RuleAdviceDef = 4, RuleLocE = 5, RuleStmtList = 6, RuleExprList = 7, 
    RuleExpr = 8, RulePrimary = 9, RuleUop = 10, RuleBop = 11, RuleLocType = 12, 
    RuleLiteral = 13
  };

  explicit NavSParser(antlr4::TokenStream *input);
  ~NavSParser();

  virtual std::string getGrammarFileName() const override;
  virtual const antlr4::atn::ATN& getATN() const override { return _atn; };
  virtual const std::vector<std::string>& getTokenNames() const override { return _tokenNames; }; // deprecated: use vocabulary instead.
  virtual const std::vector<std::string>& getRuleNames() const override;
  virtual antlr4::dfa::Vocabulary& getVocabulary() const override;


      map<string, map<string, string>> vars; // name: init_value
      map<string, map<int, set<string>>> used_vars;
      map<string, int> conds;
      map<string, map<int, advice>> advs;
      string cur_stub;
      int counter, postcounter;


  class CompilationUnitContext;
  class VarDefContext;
  class PilotDefContext;
  class AdviceListContext;
  class AdviceDefContext;
  class LocEContext;
  class StmtListContext;
  class ExprListContext;
  class ExprContext;
  class PrimaryContext;
  class UopContext;
  class BopContext;
  class LocTypeContext;
  class LiteralContext; 

  class  CompilationUnitContext : public antlr4::ParserRuleContext {
  public:
    CompilationUnitContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *EOF();
    std::vector<PilotDefContext *> pilotDef();
    PilotDefContext* pilotDef(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  CompilationUnitContext* compilationUnit();

  class  VarDefContext : public antlr4::ParserRuleContext {
  public:
    NavSParser::LiteralContext *literalContext = nullptr;
    VarDefContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *IDENTIFIER();
    antlr4::tree::TerminalNode *SEMI();
    antlr4::tree::TerminalNode *ASSIGN();
    LiteralContext *literal();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  VarDefContext* varDef();

  class  PilotDefContext : public antlr4::ParserRuleContext {
  public:
    antlr4::Token *identifierToken = nullptr;
    NavSParser::LocEContext *l = nullptr;
    PilotDefContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *IDENTIFIER();
    AdviceListContext *adviceList();
    antlr4::tree::TerminalNode *COLON();
    LocEContext *locE();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  PilotDefContext* pilotDef();

  class  AdviceListContext : public antlr4::ParserRuleContext {
  public:
    NavSParser::AdviceDefContext *adviceDefContext = nullptr;
    AdviceListContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *LBRACE();
    antlr4::tree::TerminalNode *RBRACE();
    std::vector<VarDefContext *> varDef();
    VarDefContext* varDef(size_t i);
    std::vector<antlr4::tree::TerminalNode *> POST();
    antlr4::tree::TerminalNode* POST(size_t i);
    std::vector<AdviceDefContext *> adviceDef();
    AdviceDefContext* adviceDef(size_t i);
    std::vector<antlr4::tree::TerminalNode *> PRE();
    antlr4::tree::TerminalNode* PRE(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  AdviceListContext* adviceList();

  class  AdviceDefContext : public antlr4::ParserRuleContext {
  public:
    advice a;
    NavSParser::LocEContext *locEContext = nullptr;
    NavSParser::StmtListContext *stmtListContext = nullptr;
    AdviceDefContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    LocEContext *locE();
    antlr4::tree::TerminalNode *LBRACE();
    StmtListContext *stmtList();
    antlr4::tree::TerminalNode *RBRACE();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  AdviceDefContext* adviceDef();

  class  LocEContext : public antlr4::ParserRuleContext {
  public:
    int e_ = 0;;
    NavSParser::LocEContext *e1 = nullptr;
    NavSParser::LocEContext *e3 = nullptr;
    NavSParser::LocTypeContext *locTypeContext = nullptr;
    antlr4::Token *identifierToken = nullptr;
    NavSParser::LiteralContext *literalContext = nullptr;
    NavSParser::BopContext *bopContext = nullptr;
    NavSParser::LocEContext *e = nullptr;
    NavSParser::LocEContext *e2 = nullptr;
    NavSParser::LocEContext *e4 = nullptr;
    LocEContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    LocTypeContext *locType();
    antlr4::tree::TerminalNode *LPAREN();
    antlr4::tree::TerminalNode *RPAREN();
    antlr4::tree::TerminalNode *IDENTIFIER();
    LiteralContext *literal();
    antlr4::tree::TerminalNode *CALL();
    antlr4::tree::TerminalNode *ARGSYM();
    BopContext *bop();
    antlr4::tree::TerminalNode *NOT();
    std::vector<LocEContext *> locE();
    LocEContext* locE(size_t i);
    antlr4::tree::TerminalNode *AND();
    antlr4::tree::TerminalNode *OR();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  LocEContext* locE();
  LocEContext* locE(int precedence);
  class  StmtListContext : public antlr4::ParserRuleContext {
  public:
    args a;
    NavSParser::ExprContext *exprContext = nullptr;
    StmtListContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<ExprContext *> expr();
    ExprContext* expr(size_t i);
    std::vector<antlr4::tree::TerminalNode *> SEMI();
    antlr4::tree::TerminalNode* SEMI(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  StmtListContext* stmtList();

  class  ExprListContext : public antlr4::ParserRuleContext {
  public:
    args a;
    NavSParser::ExprContext *exprContext = nullptr;
    NavSParser::ExprContext *e = nullptr;
    ExprListContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<ExprContext *> expr();
    ExprContext* expr(size_t i);
    std::vector<antlr4::tree::TerminalNode *> COMMA();
    antlr4::tree::TerminalNode* COMMA(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  ExprListContext* exprList();

  class  ExprContext : public antlr4::ParserRuleContext {
  public:
    args a;
    NavSParser::ExprContext *e1 = nullptr;
    NavSParser::PrimaryContext *primaryContext = nullptr;
    NavSParser::ExprContext *exprContext = nullptr;
    NavSParser::ExprContext *e = nullptr;
    NavSParser::ExprListContext *l = nullptr;
    NavSParser::ExprContext *e2 = nullptr;
    NavSParser::ExprContext *e3 = nullptr;
    ExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    PrimaryContext *primary();
    antlr4::tree::TerminalNode *IDENTIFIER();
    std::vector<ExprContext *> expr();
    ExprContext* expr(size_t i);
    antlr4::tree::TerminalNode *ASSIGN();
    antlr4::tree::TerminalNode *ADD_ASSIGN();
    antlr4::tree::TerminalNode *SUB_ASSIGN();
    antlr4::tree::TerminalNode *MUL_ASSIGN();
    antlr4::tree::TerminalNode *DIV_ASSIGN();
    antlr4::tree::TerminalNode *MOD_ASSIGN();
    UopContext *uop();
    antlr4::tree::TerminalNode *LPAREN();
    antlr4::tree::TerminalNode *RPAREN();
    ExprListContext *exprList();
    BopContext *bop();
    antlr4::tree::TerminalNode *IF();
    antlr4::tree::TerminalNode *ELSE();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  ExprContext* expr();
  ExprContext* expr(int precedence);
  class  PrimaryContext : public antlr4::ParserRuleContext {
  public:
    args a;
    antlr4::Token *argToken = nullptr;
    antlr4::Token *identifierToken = nullptr;
    PrimaryContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *LPAREN();
    ExprContext *expr();
    antlr4::tree::TerminalNode *RPAREN();
    antlr4::tree::TerminalNode *ARG();
    antlr4::tree::TerminalNode *IDENTIFIER();
    LiteralContext *literal();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  PrimaryContext* primary();

  class  UopContext : public antlr4::ParserRuleContext {
  public:
    UopContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *NOT();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  UopContext* uop();

  class  BopContext : public antlr4::ParserRuleContext {
  public:
    BopContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *AND();
    antlr4::tree::TerminalNode *OR();
    antlr4::tree::TerminalNode *GT();
    antlr4::tree::TerminalNode *LT();
    antlr4::tree::TerminalNode *EQUAL();
    antlr4::tree::TerminalNode *LE();
    antlr4::tree::TerminalNode *GE();
    antlr4::tree::TerminalNode *NOTEQUAL();
    antlr4::tree::TerminalNode *ADD();
    antlr4::tree::TerminalNode *SUB();
    antlr4::tree::TerminalNode *MUL();
    antlr4::tree::TerminalNode *DIV();
    antlr4::tree::TerminalNode *MOD();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  BopContext* bop();

  class  LocTypeContext : public antlr4::ParserRuleContext {
  public:
    LocTypeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *DEF();
    antlr4::tree::TerminalNode *PUSE();
    antlr4::tree::TerminalNode *CUSE();
    antlr4::tree::TerminalNode *OUSE();
    antlr4::tree::TerminalNode *LUSE();
    antlr4::tree::TerminalNode *AUSE();
    antlr4::tree::TerminalNode *FUNC();
    antlr4::tree::TerminalNode *CALL();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  LocTypeContext* locType();

  class  LiteralContext : public antlr4::ParserRuleContext {
  public:
    LiteralContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *DECIMAL_LITERAL();
    antlr4::tree::TerminalNode *FLOAT_LITERAL();
    antlr4::tree::TerminalNode *CHAR_LITERAL();
    antlr4::tree::TerminalNode *STRING_LITERAL();
    antlr4::tree::TerminalNode *BOOL_LITERAL();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;
   
  };

  LiteralContext* literal();


  virtual bool sempred(antlr4::RuleContext *_localctx, size_t ruleIndex, size_t predicateIndex) override;
  bool locESempred(LocEContext *_localctx, size_t predicateIndex);
  bool exprSempred(ExprContext *_localctx, size_t predicateIndex);

private:
  static std::vector<antlr4::dfa::DFA> _decisionToDFA;
  static antlr4::atn::PredictionContextCache _sharedContextCache;
  static std::vector<std::string> _ruleNames;
  static std::vector<std::string> _tokenNames;

  static std::vector<std::string> _literalNames;
  static std::vector<std::string> _symbolicNames;
  static antlr4::dfa::Vocabulary _vocabulary;
  static antlr4::atn::ATN _atn;
  static std::vector<uint16_t> _serializedATN;


  struct Initializer {
    Initializer();
  };
  static Initializer _init;
};

