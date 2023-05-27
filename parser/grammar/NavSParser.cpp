
// Generated from NavSParser.g4 by ANTLR 4.9.2


#include "NavSParserListener.h"

#include "NavSParser.h"


    #include "global.h"


using namespace antlrcpp;
using namespace antlr4;

NavSParser::NavSParser(TokenStream *input) : Parser(input) {
  _interpreter = new atn::ParserATNSimulator(this, _atn, _decisionToDFA, _sharedContextCache);
}

NavSParser::~NavSParser() {
  delete _interpreter;
}

std::string NavSParser::getGrammarFileName() const {
  return "NavSParser.g4";
}

const std::vector<std::string>& NavSParser::getRuleNames() const {
  return _ruleNames;
}

dfa::Vocabulary& NavSParser::getVocabulary() const {
  return _vocabulary;
}


//----------------- CompilationUnitContext ------------------------------------------------------------------

NavSParser::CompilationUnitContext::CompilationUnitContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* NavSParser::CompilationUnitContext::EOF() {
  return getToken(NavSParser::EOF, 0);
}

std::vector<NavSParser::PilotDefContext *> NavSParser::CompilationUnitContext::pilotDef() {
  return getRuleContexts<NavSParser::PilotDefContext>();
}

NavSParser::PilotDefContext* NavSParser::CompilationUnitContext::pilotDef(size_t i) {
  return getRuleContext<NavSParser::PilotDefContext>(i);
}


size_t NavSParser::CompilationUnitContext::getRuleIndex() const {
  return NavSParser::RuleCompilationUnit;
}

void NavSParser::CompilationUnitContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterCompilationUnit(this);
}

void NavSParser::CompilationUnitContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitCompilationUnit(this);
}

NavSParser::CompilationUnitContext* NavSParser::compilationUnit() {
  CompilationUnitContext *_localctx = _tracker.createInstance<CompilationUnitContext>(_ctx, getState());
  enterRule(_localctx, 0, NavSParser::RuleCompilationUnit);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(31);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == NavSParser::IDENTIFIER) {
      setState(28);
      pilotDef();
      setState(33);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(34);
    match(NavSParser::EOF);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- VarDefContext ------------------------------------------------------------------

NavSParser::VarDefContext::VarDefContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* NavSParser::VarDefContext::IDENTIFIER() {
  return getToken(NavSParser::IDENTIFIER, 0);
}

tree::TerminalNode* NavSParser::VarDefContext::SEMI() {
  return getToken(NavSParser::SEMI, 0);
}

tree::TerminalNode* NavSParser::VarDefContext::ASSIGN() {
  return getToken(NavSParser::ASSIGN, 0);
}

NavSParser::LiteralContext* NavSParser::VarDefContext::literal() {
  return getRuleContext<NavSParser::LiteralContext>(0);
}


size_t NavSParser::VarDefContext::getRuleIndex() const {
  return NavSParser::RuleVarDef;
}

void NavSParser::VarDefContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterVarDef(this);
}

void NavSParser::VarDefContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitVarDef(this);
}

NavSParser::VarDefContext* NavSParser::varDef() {
  VarDefContext *_localctx = _tracker.createInstance<VarDefContext>(_ctx, getState());
  enterRule(_localctx, 2, NavSParser::RuleVarDef);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(36);
    match(NavSParser::IDENTIFIER);
    string tval = "null";

    setState(38);
    match(NavSParser::ASSIGN);
    setState(39);
    dynamic_cast<VarDefContext *>(_localctx)->literalContext = literal();
    tval = (dynamic_cast<VarDefContext *>(_localctx)->literalContext != nullptr ? _input->getText(dynamic_cast<VarDefContext *>(_localctx)->literalContext->start, dynamic_cast<VarDefContext *>(_localctx)->literalContext->stop) : nullptr);
    setState(42);
    match(NavSParser::SEMI);

            vars[cur_stub]["halt"] = "False";
            vars[cur_stub]["prior"] = "65536";
            vars[cur_stub]["cons"] = "True";
        
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- PilotDefContext ------------------------------------------------------------------

NavSParser::PilotDefContext::PilotDefContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* NavSParser::PilotDefContext::IDENTIFIER() {
  return getToken(NavSParser::IDENTIFIER, 0);
}

NavSParser::AdviceListContext* NavSParser::PilotDefContext::adviceList() {
  return getRuleContext<NavSParser::AdviceListContext>(0);
}

tree::TerminalNode* NavSParser::PilotDefContext::COLON() {
  return getToken(NavSParser::COLON, 0);
}

NavSParser::LocEContext* NavSParser::PilotDefContext::locE() {
  return getRuleContext<NavSParser::LocEContext>(0);
}


size_t NavSParser::PilotDefContext::getRuleIndex() const {
  return NavSParser::RulePilotDef;
}

void NavSParser::PilotDefContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterPilotDef(this);
}

void NavSParser::PilotDefContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitPilotDef(this);
}

NavSParser::PilotDefContext* NavSParser::pilotDef() {
  PilotDefContext *_localctx = _tracker.createInstance<PilotDefContext>(_ctx, getState());
  enterRule(_localctx, 4, NavSParser::RulePilotDef);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(45);
    dynamic_cast<PilotDefContext *>(_localctx)->identifierToken = match(NavSParser::IDENTIFIER);

            cur_stub = (dynamic_cast<PilotDefContext *>(_localctx)->identifierToken != nullptr ? dynamic_cast<PilotDefContext *>(_localctx)->identifierToken->getText() : "");
        
    setState(51);
    _errHandler->sync(this);

    _la = _input->LA(1);
    if (_la == NavSParser::COLON) {
      setState(47);
      match(NavSParser::COLON);
      setState(48);
      dynamic_cast<PilotDefContext *>(_localctx)->l = locE(0);

              conds[cur_stub] = dynamic_cast<PilotDefContext *>(_localctx)->l->e_;
          
    }
    setState(53);
    adviceList();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- AdviceListContext ------------------------------------------------------------------

NavSParser::AdviceListContext::AdviceListContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* NavSParser::AdviceListContext::LBRACE() {
  return getToken(NavSParser::LBRACE, 0);
}

tree::TerminalNode* NavSParser::AdviceListContext::RBRACE() {
  return getToken(NavSParser::RBRACE, 0);
}

std::vector<NavSParser::VarDefContext *> NavSParser::AdviceListContext::varDef() {
  return getRuleContexts<NavSParser::VarDefContext>();
}

NavSParser::VarDefContext* NavSParser::AdviceListContext::varDef(size_t i) {
  return getRuleContext<NavSParser::VarDefContext>(i);
}

std::vector<tree::TerminalNode *> NavSParser::AdviceListContext::POST() {
  return getTokens(NavSParser::POST);
}

tree::TerminalNode* NavSParser::AdviceListContext::POST(size_t i) {
  return getToken(NavSParser::POST, i);
}

std::vector<NavSParser::AdviceDefContext *> NavSParser::AdviceListContext::adviceDef() {
  return getRuleContexts<NavSParser::AdviceDefContext>();
}

NavSParser::AdviceDefContext* NavSParser::AdviceListContext::adviceDef(size_t i) {
  return getRuleContext<NavSParser::AdviceDefContext>(i);
}

std::vector<tree::TerminalNode *> NavSParser::AdviceListContext::PRE() {
  return getTokens(NavSParser::PRE);
}

tree::TerminalNode* NavSParser::AdviceListContext::PRE(size_t i) {
  return getToken(NavSParser::PRE, i);
}


size_t NavSParser::AdviceListContext::getRuleIndex() const {
  return NavSParser::RuleAdviceList;
}

void NavSParser::AdviceListContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterAdviceList(this);
}

void NavSParser::AdviceListContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitAdviceList(this);
}

NavSParser::AdviceListContext* NavSParser::adviceList() {
  AdviceListContext *_localctx = _tracker.createInstance<AdviceListContext>(_ctx, getState());
  enterRule(_localctx, 6, NavSParser::RuleAdviceList);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(55);
    match(NavSParser::LBRACE);
     counter = 0, postcounter = -1; 
    setState(71);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & ((1ULL << NavSParser::FUNC)
      | (1ULL << NavSParser::DEF)
      | (1ULL << NavSParser::AUSE)
      | (1ULL << NavSParser::PUSE)
      | (1ULL << NavSParser::CUSE)
      | (1ULL << NavSParser::OUSE)
      | (1ULL << NavSParser::LUSE)
      | (1ULL << NavSParser::CALL)
      | (1ULL << NavSParser::NOT)
      | (1ULL << NavSParser::PRE)
      | (1ULL << NavSParser::POST)
      | (1ULL << NavSParser::IDENTIFIER))) != 0)) {
      setState(69);
      _errHandler->sync(this);
      switch (_input->LA(1)) {
        case NavSParser::IDENTIFIER: {
          setState(57);
          varDef();
          break;
        }

        case NavSParser::FUNC:
        case NavSParser::DEF:
        case NavSParser::AUSE:
        case NavSParser::PUSE:
        case NavSParser::CUSE:
        case NavSParser::OUSE:
        case NavSParser::LUSE:
        case NavSParser::CALL:
        case NavSParser::NOT:
        case NavSParser::PRE: {
          setState(61);
          _errHandler->sync(this);
          switch (_input->LA(1)) {
            case NavSParser::FUNC:
            case NavSParser::DEF:
            case NavSParser::AUSE:
            case NavSParser::PUSE:
            case NavSParser::CUSE:
            case NavSParser::OUSE:
            case NavSParser::LUSE:
            case NavSParser::CALL:
            case NavSParser::NOT: {
              setState(58);
              dynamic_cast<AdviceListContext *>(_localctx)->adviceDefContext = adviceDef();
              break;
            }

            case NavSParser::PRE: {
              setState(59);
              match(NavSParser::PRE);
              setState(60);
              dynamic_cast<AdviceListContext *>(_localctx)->adviceDefContext = adviceDef();
              break;
            }

          default:
            throw NoViableAltException(this);
          }

                  advs[cur_stub][counter] = dynamic_cast<AdviceListContext *>(_localctx)->adviceDefContext->a;
                  counter++;
              
          break;
        }

        case NavSParser::POST: {
          setState(65);
          match(NavSParser::POST);
          setState(66);
          dynamic_cast<AdviceListContext *>(_localctx)->adviceDefContext = adviceDef();

                  advs[cur_stub][postcounter] = dynamic_cast<AdviceListContext *>(_localctx)->adviceDefContext->a;
                  postcounter--;
              
          break;
        }

      default:
        throw NoViableAltException(this);
      }
      setState(73);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(74);
    match(NavSParser::RBRACE);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- AdviceDefContext ------------------------------------------------------------------

NavSParser::AdviceDefContext::AdviceDefContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

NavSParser::LocEContext* NavSParser::AdviceDefContext::locE() {
  return getRuleContext<NavSParser::LocEContext>(0);
}

tree::TerminalNode* NavSParser::AdviceDefContext::LBRACE() {
  return getToken(NavSParser::LBRACE, 0);
}

NavSParser::StmtListContext* NavSParser::AdviceDefContext::stmtList() {
  return getRuleContext<NavSParser::StmtListContext>(0);
}

tree::TerminalNode* NavSParser::AdviceDefContext::RBRACE() {
  return getToken(NavSParser::RBRACE, 0);
}


size_t NavSParser::AdviceDefContext::getRuleIndex() const {
  return NavSParser::RuleAdviceDef;
}

void NavSParser::AdviceDefContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterAdviceDef(this);
}

void NavSParser::AdviceDefContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitAdviceDef(this);
}

NavSParser::AdviceDefContext* NavSParser::adviceDef() {
  AdviceDefContext *_localctx = _tracker.createInstance<AdviceDefContext>(_ctx, getState());
  enterRule(_localctx, 8, NavSParser::RuleAdviceDef);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(76);
    dynamic_cast<AdviceDefContext *>(_localctx)->locEContext = locE(0);

            _localctx->a.first = dynamic_cast<AdviceDefContext *>(_localctx)->locEContext->e_;
        
    setState(78);
    match(NavSParser::LBRACE);
    setState(79);
    dynamic_cast<AdviceDefContext *>(_localctx)->stmtListContext = stmtList();

            _localctx->a.second = make_pair(dynamic_cast<AdviceDefContext *>(_localctx)->stmtListContext->a, (dynamic_cast<AdviceDefContext *>(_localctx)->stmtListContext != nullptr ? _input->getText(dynamic_cast<AdviceDefContext *>(_localctx)->stmtListContext->start, dynamic_cast<AdviceDefContext *>(_localctx)->stmtListContext->stop) : nullptr));
        
    setState(81);
    match(NavSParser::RBRACE);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- LocEContext ------------------------------------------------------------------

NavSParser::LocEContext::LocEContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

NavSParser::LocTypeContext* NavSParser::LocEContext::locType() {
  return getRuleContext<NavSParser::LocTypeContext>(0);
}

tree::TerminalNode* NavSParser::LocEContext::LPAREN() {
  return getToken(NavSParser::LPAREN, 0);
}

tree::TerminalNode* NavSParser::LocEContext::RPAREN() {
  return getToken(NavSParser::RPAREN, 0);
}

tree::TerminalNode* NavSParser::LocEContext::IDENTIFIER() {
  return getToken(NavSParser::IDENTIFIER, 0);
}

NavSParser::LiteralContext* NavSParser::LocEContext::literal() {
  return getRuleContext<NavSParser::LiteralContext>(0);
}

tree::TerminalNode* NavSParser::LocEContext::CALL() {
  return getToken(NavSParser::CALL, 0);
}

tree::TerminalNode* NavSParser::LocEContext::ARGSYM() {
  return getToken(NavSParser::ARGSYM, 0);
}

NavSParser::BopContext* NavSParser::LocEContext::bop() {
  return getRuleContext<NavSParser::BopContext>(0);
}

tree::TerminalNode* NavSParser::LocEContext::NOT() {
  return getToken(NavSParser::NOT, 0);
}

std::vector<NavSParser::LocEContext *> NavSParser::LocEContext::locE() {
  return getRuleContexts<NavSParser::LocEContext>();
}

NavSParser::LocEContext* NavSParser::LocEContext::locE(size_t i) {
  return getRuleContext<NavSParser::LocEContext>(i);
}

tree::TerminalNode* NavSParser::LocEContext::AND() {
  return getToken(NavSParser::AND, 0);
}

tree::TerminalNode* NavSParser::LocEContext::OR() {
  return getToken(NavSParser::OR, 0);
}


size_t NavSParser::LocEContext::getRuleIndex() const {
  return NavSParser::RuleLocE;
}

void NavSParser::LocEContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterLocE(this);
}

void NavSParser::LocEContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitLocE(this);
}


NavSParser::LocEContext* NavSParser::locE() {
   return locE(0);
}

NavSParser::LocEContext* NavSParser::locE(int precedence) {
  ParserRuleContext *parentContext = _ctx;
  size_t parentState = getState();
  NavSParser::LocEContext *_localctx = _tracker.createInstance<LocEContext>(_ctx, parentState);
  NavSParser::LocEContext *previousContext = _localctx;
  (void)previousContext; // Silence compiler, in case the context is not used by generated code.
  size_t startState = 10;
  enterRecursionRule(_localctx, 10, NavSParser::RuleLocE, precedence);

    

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    unrollRecursionContexts(parentContext);
  });
  try {
    size_t alt;
    enterOuterAlt(_localctx, 1);
    setState(108);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 6, _ctx)) {
    case 1: {
      setState(84);
      dynamic_cast<LocEContext *>(_localctx)->locTypeContext = locType();
      string id="null";
      setState(86);
      match(NavSParser::LPAREN);
      setState(92);
      _errHandler->sync(this);
      switch (_input->LA(1)) {
        case NavSParser::IDENTIFIER: {
          setState(87);
          dynamic_cast<LocEContext *>(_localctx)->identifierToken = match(NavSParser::IDENTIFIER);
          id=(dynamic_cast<LocEContext *>(_localctx)->identifierToken != nullptr ? dynamic_cast<LocEContext *>(_localctx)->identifierToken->getText() : "");
          break;
        }

        case NavSParser::BOOL_LITERAL:
        case NavSParser::DECIMAL_LITERAL:
        case NavSParser::FLOAT_LITERAL:
        case NavSParser::CHAR_LITERAL:
        case NavSParser::STRING_LITERAL: {
          setState(89);
          dynamic_cast<LocEContext *>(_localctx)->literalContext = literal();
          id=(dynamic_cast<LocEContext *>(_localctx)->literalContext != nullptr ? _input->getText(dynamic_cast<LocEContext *>(_localctx)->literalContext->start, dynamic_cast<LocEContext *>(_localctx)->literalContext->stop) : nullptr);
          break;
        }

      default:
        throw NoViableAltException(this);
      }
      setState(94);
      match(NavSParser::RPAREN);

              string tmp = (dynamic_cast<LocEContext *>(_localctx)->locTypeContext != nullptr ? _input->getText(dynamic_cast<LocEContext *>(_localctx)->locTypeContext->start, dynamic_cast<LocEContext *>(_localctx)->locTypeContext->stop) : nullptr) + "_" + id;
              dynamic_cast<LocEContext *>(_localctx)->e_ =  PredManager::insert_pred(tmp);
          
      break;
    }

    case 2: {
      setState(97);
      match(NavSParser::CALL);
      setState(98);
      match(NavSParser::LPAREN);
      setState(99);
      match(NavSParser::ARGSYM);
      setState(100);
      dynamic_cast<LocEContext *>(_localctx)->bopContext = bop();
      setState(101);
      match(NavSParser::RPAREN);

              string tmp = "call_" + (dynamic_cast<LocEContext *>(_localctx)->bopContext != nullptr ? _input->getText(dynamic_cast<LocEContext *>(_localctx)->bopContext->start, dynamic_cast<LocEContext *>(_localctx)->bopContext->stop) : nullptr);
              dynamic_cast<LocEContext *>(_localctx)->e_ =  PredManager::insert_pred(tmp);
          
      break;
    }

    case 3: {
      setState(104);
      match(NavSParser::NOT);
      setState(105);
      dynamic_cast<LocEContext *>(_localctx)->e = locE(1);

              z3::expr e = (!PredManager::get(dynamic_cast<LocEContext *>(_localctx)->e->e_)).simplify();
              dynamic_cast<LocEContext *>(_localctx)->e_ =  PredManager::insert_expr(e);
          
      break;
    }

    default:
      break;
    }
    _ctx->stop = _input->LT(-1);
    setState(122);
    _errHandler->sync(this);
    alt = getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 8, _ctx);
    while (alt != 2 && alt != atn::ATN::INVALID_ALT_NUMBER) {
      if (alt == 1) {
        if (!_parseListeners.empty())
          triggerExitRuleEvent();
        previousContext = _localctx;
        setState(120);
        _errHandler->sync(this);
        switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 7, _ctx)) {
        case 1: {
          _localctx = _tracker.createInstance<LocEContext>(parentContext, parentState);
          _localctx->e1 = previousContext;
          pushNewRecursionContext(_localctx, startState, RuleLocE);
          setState(110);

          if (!(precpred(_ctx, 3))) throw FailedPredicateException(this, "precpred(_ctx, 3)");
          setState(111);
          match(NavSParser::AND);
          setState(112);
          dynamic_cast<LocEContext *>(_localctx)->e2 = locE(4);

                            z3::expr e = (PredManager::get(dynamic_cast<LocEContext *>(_localctx)->e1->e_) && PredManager::get(dynamic_cast<LocEContext *>(_localctx)->e2->e_)).simplify();
                            dynamic_cast<LocEContext *>(_localctx)->e_ =  PredManager::insert_expr(e);
                        
          break;
        }

        case 2: {
          _localctx = _tracker.createInstance<LocEContext>(parentContext, parentState);
          _localctx->e3 = previousContext;
          pushNewRecursionContext(_localctx, startState, RuleLocE);
          setState(115);

          if (!(precpred(_ctx, 2))) throw FailedPredicateException(this, "precpred(_ctx, 2)");
          setState(116);
          match(NavSParser::OR);
          setState(117);
          dynamic_cast<LocEContext *>(_localctx)->e4 = locE(3);

                            z3::expr e = (PredManager::get(dynamic_cast<LocEContext *>(_localctx)->e1->e_) || PredManager::get(dynamic_cast<LocEContext *>(_localctx)->e2->e_)).simplify();
                            dynamic_cast<LocEContext *>(_localctx)->e_ =  PredManager::insert_expr(e);
                        
          break;
        }

        default:
          break;
        } 
      }
      setState(124);
      _errHandler->sync(this);
      alt = getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 8, _ctx);
    }
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }
  return _localctx;
}

//----------------- StmtListContext ------------------------------------------------------------------

NavSParser::StmtListContext::StmtListContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<NavSParser::ExprContext *> NavSParser::StmtListContext::expr() {
  return getRuleContexts<NavSParser::ExprContext>();
}

NavSParser::ExprContext* NavSParser::StmtListContext::expr(size_t i) {
  return getRuleContext<NavSParser::ExprContext>(i);
}

std::vector<tree::TerminalNode *> NavSParser::StmtListContext::SEMI() {
  return getTokens(NavSParser::SEMI);
}

tree::TerminalNode* NavSParser::StmtListContext::SEMI(size_t i) {
  return getToken(NavSParser::SEMI, i);
}


size_t NavSParser::StmtListContext::getRuleIndex() const {
  return NavSParser::RuleStmtList;
}

void NavSParser::StmtListContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterStmtList(this);
}

void NavSParser::StmtListContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitStmtList(this);
}

NavSParser::StmtListContext* NavSParser::stmtList() {
  StmtListContext *_localctx = _tracker.createInstance<StmtListContext>(_ctx, getState());
  enterRule(_localctx, 12, NavSParser::RuleStmtList);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(131);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & ((1ULL << NavSParser::NOT)
      | (1ULL << NavSParser::LPAREN)
      | (1ULL << NavSParser::BOOL_LITERAL)
      | (1ULL << NavSParser::DECIMAL_LITERAL)
      | (1ULL << NavSParser::FLOAT_LITERAL)
      | (1ULL << NavSParser::CHAR_LITERAL)
      | (1ULL << NavSParser::STRING_LITERAL)
      | (1ULL << NavSParser::IDENTIFIER)
      | (1ULL << NavSParser::ARG))) != 0)) {
      setState(125);
      dynamic_cast<StmtListContext *>(_localctx)->exprContext = expr(0);

              _localctx->a.insert(dynamic_cast<StmtListContext *>(_localctx)->exprContext->a.begin(), dynamic_cast<StmtListContext *>(_localctx)->exprContext->a.end());
          
      setState(127);
      match(NavSParser::SEMI);
      setState(133);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ExprListContext ------------------------------------------------------------------

NavSParser::ExprListContext::ExprListContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<NavSParser::ExprContext *> NavSParser::ExprListContext::expr() {
  return getRuleContexts<NavSParser::ExprContext>();
}

NavSParser::ExprContext* NavSParser::ExprListContext::expr(size_t i) {
  return getRuleContext<NavSParser::ExprContext>(i);
}

std::vector<tree::TerminalNode *> NavSParser::ExprListContext::COMMA() {
  return getTokens(NavSParser::COMMA);
}

tree::TerminalNode* NavSParser::ExprListContext::COMMA(size_t i) {
  return getToken(NavSParser::COMMA, i);
}


size_t NavSParser::ExprListContext::getRuleIndex() const {
  return NavSParser::RuleExprList;
}

void NavSParser::ExprListContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterExprList(this);
}

void NavSParser::ExprListContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitExprList(this);
}

NavSParser::ExprListContext* NavSParser::exprList() {
  ExprListContext *_localctx = _tracker.createInstance<ExprListContext>(_ctx, getState());
  enterRule(_localctx, 14, NavSParser::RuleExprList);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(134);
    dynamic_cast<ExprListContext *>(_localctx)->exprContext = expr(0);

            dynamic_cast<ExprListContext *>(_localctx)->a =  dynamic_cast<ExprListContext *>(_localctx)->exprContext->a;
        
    setState(142);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == NavSParser::COMMA) {
      setState(136);
      match(NavSParser::COMMA);
      setState(137);
      dynamic_cast<ExprListContext *>(_localctx)->e = dynamic_cast<ExprListContext *>(_localctx)->exprContext = expr(0);

              _localctx->a.insert(dynamic_cast<ExprListContext *>(_localctx)->e->a.begin(), dynamic_cast<ExprListContext *>(_localctx)->e->a.end());
          
      setState(144);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ExprContext ------------------------------------------------------------------

NavSParser::ExprContext::ExprContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

NavSParser::PrimaryContext* NavSParser::ExprContext::primary() {
  return getRuleContext<NavSParser::PrimaryContext>(0);
}

tree::TerminalNode* NavSParser::ExprContext::IDENTIFIER() {
  return getToken(NavSParser::IDENTIFIER, 0);
}

std::vector<NavSParser::ExprContext *> NavSParser::ExprContext::expr() {
  return getRuleContexts<NavSParser::ExprContext>();
}

NavSParser::ExprContext* NavSParser::ExprContext::expr(size_t i) {
  return getRuleContext<NavSParser::ExprContext>(i);
}

tree::TerminalNode* NavSParser::ExprContext::ASSIGN() {
  return getToken(NavSParser::ASSIGN, 0);
}

tree::TerminalNode* NavSParser::ExprContext::ADD_ASSIGN() {
  return getToken(NavSParser::ADD_ASSIGN, 0);
}

tree::TerminalNode* NavSParser::ExprContext::SUB_ASSIGN() {
  return getToken(NavSParser::SUB_ASSIGN, 0);
}

tree::TerminalNode* NavSParser::ExprContext::MUL_ASSIGN() {
  return getToken(NavSParser::MUL_ASSIGN, 0);
}

tree::TerminalNode* NavSParser::ExprContext::DIV_ASSIGN() {
  return getToken(NavSParser::DIV_ASSIGN, 0);
}

tree::TerminalNode* NavSParser::ExprContext::MOD_ASSIGN() {
  return getToken(NavSParser::MOD_ASSIGN, 0);
}

NavSParser::UopContext* NavSParser::ExprContext::uop() {
  return getRuleContext<NavSParser::UopContext>(0);
}

tree::TerminalNode* NavSParser::ExprContext::LPAREN() {
  return getToken(NavSParser::LPAREN, 0);
}

tree::TerminalNode* NavSParser::ExprContext::RPAREN() {
  return getToken(NavSParser::RPAREN, 0);
}

NavSParser::ExprListContext* NavSParser::ExprContext::exprList() {
  return getRuleContext<NavSParser::ExprListContext>(0);
}

NavSParser::BopContext* NavSParser::ExprContext::bop() {
  return getRuleContext<NavSParser::BopContext>(0);
}

tree::TerminalNode* NavSParser::ExprContext::IF() {
  return getToken(NavSParser::IF, 0);
}

tree::TerminalNode* NavSParser::ExprContext::ELSE() {
  return getToken(NavSParser::ELSE, 0);
}


size_t NavSParser::ExprContext::getRuleIndex() const {
  return NavSParser::RuleExpr;
}

void NavSParser::ExprContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterExpr(this);
}

void NavSParser::ExprContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitExpr(this);
}


NavSParser::ExprContext* NavSParser::expr() {
   return expr(0);
}

NavSParser::ExprContext* NavSParser::expr(int precedence) {
  ParserRuleContext *parentContext = _ctx;
  size_t parentState = getState();
  NavSParser::ExprContext *_localctx = _tracker.createInstance<ExprContext>(_ctx, parentState);
  NavSParser::ExprContext *previousContext = _localctx;
  (void)previousContext; // Silence compiler, in case the context is not used by generated code.
  size_t startState = 16;
  enterRecursionRule(_localctx, 16, NavSParser::RuleExpr, precedence);

    size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    unrollRecursionContexts(parentContext);
  });
  try {
    size_t alt;
    enterOuterAlt(_localctx, 1);
    setState(169);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 11, _ctx)) {
    case 1: {
      setState(146);
      dynamic_cast<ExprContext *>(_localctx)->primaryContext = primary();

              dynamic_cast<ExprContext *>(_localctx)->a =  dynamic_cast<ExprContext *>(_localctx)->primaryContext->a;
          
      break;
    }

    case 2: {
      setState(149);
      match(NavSParser::IDENTIFIER);
      setState(150);
      _la = _input->LA(1);
      if (!((((_la & ~ 0x3fULL) == 0) &&
        ((1ULL << _la) & ((1ULL << NavSParser::ASSIGN)
        | (1ULL << NavSParser::ADD_ASSIGN)
        | (1ULL << NavSParser::SUB_ASSIGN)
        | (1ULL << NavSParser::MUL_ASSIGN)
        | (1ULL << NavSParser::DIV_ASSIGN)
        | (1ULL << NavSParser::MOD_ASSIGN))) != 0))) {
      _errHandler->recoverInline(this);
      }
      else {
        _errHandler->reportMatch(this);
        consume();
      }
      setState(151);
      dynamic_cast<ExprContext *>(_localctx)->exprContext = expr(6);

              dynamic_cast<ExprContext *>(_localctx)->a =  dynamic_cast<ExprContext *>(_localctx)->exprContext->a;
          
      break;
    }

    case 3: {
      setState(154);
      uop();
      setState(155);
      dynamic_cast<ExprContext *>(_localctx)->e = dynamic_cast<ExprContext *>(_localctx)->exprContext = expr(4);
       dynamic_cast<ExprContext *>(_localctx)->a =  dynamic_cast<ExprContext *>(_localctx)->e->a; 
      break;
    }

    case 4: {
      setState(158);
      match(NavSParser::IDENTIFIER);
      setState(159);
      match(NavSParser::LPAREN);
      setState(160);
      dynamic_cast<ExprContext *>(_localctx)->l = exprList();
      setState(161);
      match(NavSParser::RPAREN);

              dynamic_cast<ExprContext *>(_localctx)->a =  dynamic_cast<ExprContext *>(_localctx)->l->a;
          
      break;
    }

    case 5: {
      setState(164);
      match(NavSParser::LPAREN);
      setState(165);
      dynamic_cast<ExprContext *>(_localctx)->l = exprList();
      setState(166);
      match(NavSParser::RPAREN);

              dynamic_cast<ExprContext *>(_localctx)->a =  dynamic_cast<ExprContext *>(_localctx)->l->a;
          
      break;
    }

    default:
      break;
    }
    _ctx->stop = _input->LT(-1);
    setState(185);
    _errHandler->sync(this);
    alt = getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 13, _ctx);
    while (alt != 2 && alt != atn::ATN::INVALID_ALT_NUMBER) {
      if (alt == 1) {
        if (!_parseListeners.empty())
          triggerExitRuleEvent();
        previousContext = _localctx;
        setState(183);
        _errHandler->sync(this);
        switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 12, _ctx)) {
        case 1: {
          _localctx = _tracker.createInstance<ExprContext>(parentContext, parentState);
          _localctx->e1 = previousContext;
          pushNewRecursionContext(_localctx, startState, RuleExpr);
          setState(171);

          if (!(precpred(_ctx, 5))) throw FailedPredicateException(this, "precpred(_ctx, 5)");
          setState(172);
          bop();
          setState(173);
          dynamic_cast<ExprContext *>(_localctx)->e2 = dynamic_cast<ExprContext *>(_localctx)->exprContext = expr(6);

                            _localctx->a.insert(dynamic_cast<ExprContext *>(_localctx)->e1->a.begin(), dynamic_cast<ExprContext *>(_localctx)->e1->a.end());
                            _localctx->a.insert(dynamic_cast<ExprContext *>(_localctx)->e2->a.begin(), dynamic_cast<ExprContext *>(_localctx)->e2->a.end());
                        
          break;
        }

        case 2: {
          _localctx = _tracker.createInstance<ExprContext>(parentContext, parentState);
          _localctx->e1 = previousContext;
          pushNewRecursionContext(_localctx, startState, RuleExpr);
          setState(176);

          if (!(precpred(_ctx, 3))) throw FailedPredicateException(this, "precpred(_ctx, 3)");
          setState(177);
          match(NavSParser::IF);
          setState(178);
          dynamic_cast<ExprContext *>(_localctx)->e2 = dynamic_cast<ExprContext *>(_localctx)->exprContext = expr(0);
          setState(179);
          match(NavSParser::ELSE);
          setState(180);
          dynamic_cast<ExprContext *>(_localctx)->e3 = dynamic_cast<ExprContext *>(_localctx)->exprContext = expr(4);

                            _localctx->a.insert(dynamic_cast<ExprContext *>(_localctx)->e1->a.begin(), dynamic_cast<ExprContext *>(_localctx)->e1->a.end());
                            _localctx->a.insert(dynamic_cast<ExprContext *>(_localctx)->e2->a.begin(), dynamic_cast<ExprContext *>(_localctx)->e2->a.end());
                            _localctx->a.insert(dynamic_cast<ExprContext *>(_localctx)->e3->a.begin(), dynamic_cast<ExprContext *>(_localctx)->e3->a.end());
                        
          break;
        }

        default:
          break;
        } 
      }
      setState(187);
      _errHandler->sync(this);
      alt = getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 13, _ctx);
    }
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }
  return _localctx;
}

//----------------- PrimaryContext ------------------------------------------------------------------

NavSParser::PrimaryContext::PrimaryContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* NavSParser::PrimaryContext::LPAREN() {
  return getToken(NavSParser::LPAREN, 0);
}

NavSParser::ExprContext* NavSParser::PrimaryContext::expr() {
  return getRuleContext<NavSParser::ExprContext>(0);
}

tree::TerminalNode* NavSParser::PrimaryContext::RPAREN() {
  return getToken(NavSParser::RPAREN, 0);
}

tree::TerminalNode* NavSParser::PrimaryContext::ARG() {
  return getToken(NavSParser::ARG, 0);
}

tree::TerminalNode* NavSParser::PrimaryContext::IDENTIFIER() {
  return getToken(NavSParser::IDENTIFIER, 0);
}

NavSParser::LiteralContext* NavSParser::PrimaryContext::literal() {
  return getRuleContext<NavSParser::LiteralContext>(0);
}


size_t NavSParser::PrimaryContext::getRuleIndex() const {
  return NavSParser::RulePrimary;
}

void NavSParser::PrimaryContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterPrimary(this);
}

void NavSParser::PrimaryContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitPrimary(this);
}

NavSParser::PrimaryContext* NavSParser::primary() {
  PrimaryContext *_localctx = _tracker.createInstance<PrimaryContext>(_ctx, getState());
  enterRule(_localctx, 18, NavSParser::RulePrimary);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(197);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case NavSParser::LPAREN: {
        enterOuterAlt(_localctx, 1);
        setState(188);
        match(NavSParser::LPAREN);
        setState(189);
        expr(0);
        setState(190);
        match(NavSParser::RPAREN);
        break;
      }

      case NavSParser::ARG: {
        enterOuterAlt(_localctx, 2);
        setState(192);
        dynamic_cast<PrimaryContext *>(_localctx)->argToken = match(NavSParser::ARG);

                _localctx->a.insert(stoi((dynamic_cast<PrimaryContext *>(_localctx)->argToken != nullptr ? dynamic_cast<PrimaryContext *>(_localctx)->argToken->getText() : "").substr(1)));
            
        break;
      }

      case NavSParser::IDENTIFIER: {
        enterOuterAlt(_localctx, 3);
        setState(194);
        dynamic_cast<PrimaryContext *>(_localctx)->identifierToken = match(NavSParser::IDENTIFIER);

                used_vars[cur_stub][counter].insert((dynamic_cast<PrimaryContext *>(_localctx)->identifierToken != nullptr ? dynamic_cast<PrimaryContext *>(_localctx)->identifierToken->getText() : ""));
            
        break;
      }

      case NavSParser::BOOL_LITERAL:
      case NavSParser::DECIMAL_LITERAL:
      case NavSParser::FLOAT_LITERAL:
      case NavSParser::CHAR_LITERAL:
      case NavSParser::STRING_LITERAL: {
        enterOuterAlt(_localctx, 4);
        setState(196);
        literal();
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- UopContext ------------------------------------------------------------------

NavSParser::UopContext::UopContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* NavSParser::UopContext::NOT() {
  return getToken(NavSParser::NOT, 0);
}


size_t NavSParser::UopContext::getRuleIndex() const {
  return NavSParser::RuleUop;
}

void NavSParser::UopContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterUop(this);
}

void NavSParser::UopContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitUop(this);
}

NavSParser::UopContext* NavSParser::uop() {
  UopContext *_localctx = _tracker.createInstance<UopContext>(_ctx, getState());
  enterRule(_localctx, 20, NavSParser::RuleUop);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(199);
    match(NavSParser::NOT);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- BopContext ------------------------------------------------------------------

NavSParser::BopContext::BopContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* NavSParser::BopContext::AND() {
  return getToken(NavSParser::AND, 0);
}

tree::TerminalNode* NavSParser::BopContext::OR() {
  return getToken(NavSParser::OR, 0);
}

tree::TerminalNode* NavSParser::BopContext::GT() {
  return getToken(NavSParser::GT, 0);
}

tree::TerminalNode* NavSParser::BopContext::LT() {
  return getToken(NavSParser::LT, 0);
}

tree::TerminalNode* NavSParser::BopContext::EQUAL() {
  return getToken(NavSParser::EQUAL, 0);
}

tree::TerminalNode* NavSParser::BopContext::LE() {
  return getToken(NavSParser::LE, 0);
}

tree::TerminalNode* NavSParser::BopContext::GE() {
  return getToken(NavSParser::GE, 0);
}

tree::TerminalNode* NavSParser::BopContext::NOTEQUAL() {
  return getToken(NavSParser::NOTEQUAL, 0);
}

tree::TerminalNode* NavSParser::BopContext::ADD() {
  return getToken(NavSParser::ADD, 0);
}

tree::TerminalNode* NavSParser::BopContext::SUB() {
  return getToken(NavSParser::SUB, 0);
}

tree::TerminalNode* NavSParser::BopContext::MUL() {
  return getToken(NavSParser::MUL, 0);
}

tree::TerminalNode* NavSParser::BopContext::DIV() {
  return getToken(NavSParser::DIV, 0);
}

tree::TerminalNode* NavSParser::BopContext::MOD() {
  return getToken(NavSParser::MOD, 0);
}


size_t NavSParser::BopContext::getRuleIndex() const {
  return NavSParser::RuleBop;
}

void NavSParser::BopContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterBop(this);
}

void NavSParser::BopContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitBop(this);
}

NavSParser::BopContext* NavSParser::bop() {
  BopContext *_localctx = _tracker.createInstance<BopContext>(_ctx, getState());
  enterRule(_localctx, 22, NavSParser::RuleBop);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(201);
    _la = _input->LA(1);
    if (!((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & ((1ULL << NavSParser::AND)
      | (1ULL << NavSParser::OR)
      | (1ULL << NavSParser::GT)
      | (1ULL << NavSParser::LT)
      | (1ULL << NavSParser::EQUAL)
      | (1ULL << NavSParser::LE)
      | (1ULL << NavSParser::GE)
      | (1ULL << NavSParser::NOTEQUAL)
      | (1ULL << NavSParser::ADD)
      | (1ULL << NavSParser::SUB)
      | (1ULL << NavSParser::MUL)
      | (1ULL << NavSParser::DIV)
      | (1ULL << NavSParser::MOD))) != 0))) {
    _errHandler->recoverInline(this);
    }
    else {
      _errHandler->reportMatch(this);
      consume();
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- LocTypeContext ------------------------------------------------------------------

NavSParser::LocTypeContext::LocTypeContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* NavSParser::LocTypeContext::DEF() {
  return getToken(NavSParser::DEF, 0);
}

tree::TerminalNode* NavSParser::LocTypeContext::PUSE() {
  return getToken(NavSParser::PUSE, 0);
}

tree::TerminalNode* NavSParser::LocTypeContext::CUSE() {
  return getToken(NavSParser::CUSE, 0);
}

tree::TerminalNode* NavSParser::LocTypeContext::OUSE() {
  return getToken(NavSParser::OUSE, 0);
}

tree::TerminalNode* NavSParser::LocTypeContext::LUSE() {
  return getToken(NavSParser::LUSE, 0);
}

tree::TerminalNode* NavSParser::LocTypeContext::AUSE() {
  return getToken(NavSParser::AUSE, 0);
}

tree::TerminalNode* NavSParser::LocTypeContext::FUNC() {
  return getToken(NavSParser::FUNC, 0);
}

tree::TerminalNode* NavSParser::LocTypeContext::CALL() {
  return getToken(NavSParser::CALL, 0);
}


size_t NavSParser::LocTypeContext::getRuleIndex() const {
  return NavSParser::RuleLocType;
}

void NavSParser::LocTypeContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterLocType(this);
}

void NavSParser::LocTypeContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitLocType(this);
}

NavSParser::LocTypeContext* NavSParser::locType() {
  LocTypeContext *_localctx = _tracker.createInstance<LocTypeContext>(_ctx, getState());
  enterRule(_localctx, 24, NavSParser::RuleLocType);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(203);
    _la = _input->LA(1);
    if (!((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & ((1ULL << NavSParser::FUNC)
      | (1ULL << NavSParser::DEF)
      | (1ULL << NavSParser::AUSE)
      | (1ULL << NavSParser::PUSE)
      | (1ULL << NavSParser::CUSE)
      | (1ULL << NavSParser::OUSE)
      | (1ULL << NavSParser::LUSE)
      | (1ULL << NavSParser::CALL))) != 0))) {
    _errHandler->recoverInline(this);
    }
    else {
      _errHandler->reportMatch(this);
      consume();
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- LiteralContext ------------------------------------------------------------------

NavSParser::LiteralContext::LiteralContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* NavSParser::LiteralContext::DECIMAL_LITERAL() {
  return getToken(NavSParser::DECIMAL_LITERAL, 0);
}

tree::TerminalNode* NavSParser::LiteralContext::FLOAT_LITERAL() {
  return getToken(NavSParser::FLOAT_LITERAL, 0);
}

tree::TerminalNode* NavSParser::LiteralContext::CHAR_LITERAL() {
  return getToken(NavSParser::CHAR_LITERAL, 0);
}

tree::TerminalNode* NavSParser::LiteralContext::STRING_LITERAL() {
  return getToken(NavSParser::STRING_LITERAL, 0);
}

tree::TerminalNode* NavSParser::LiteralContext::BOOL_LITERAL() {
  return getToken(NavSParser::BOOL_LITERAL, 0);
}


size_t NavSParser::LiteralContext::getRuleIndex() const {
  return NavSParser::RuleLiteral;
}

void NavSParser::LiteralContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterLiteral(this);
}

void NavSParser::LiteralContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<NavSParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitLiteral(this);
}

NavSParser::LiteralContext* NavSParser::literal() {
  LiteralContext *_localctx = _tracker.createInstance<LiteralContext>(_ctx, getState());
  enterRule(_localctx, 26, NavSParser::RuleLiteral);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(205);
    _la = _input->LA(1);
    if (!((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & ((1ULL << NavSParser::BOOL_LITERAL)
      | (1ULL << NavSParser::DECIMAL_LITERAL)
      | (1ULL << NavSParser::FLOAT_LITERAL)
      | (1ULL << NavSParser::CHAR_LITERAL)
      | (1ULL << NavSParser::STRING_LITERAL))) != 0))) {
    _errHandler->recoverInline(this);
    }
    else {
      _errHandler->reportMatch(this);
      consume();
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

bool NavSParser::sempred(RuleContext *context, size_t ruleIndex, size_t predicateIndex) {
  switch (ruleIndex) {
    case 5: return locESempred(dynamic_cast<LocEContext *>(context), predicateIndex);
    case 8: return exprSempred(dynamic_cast<ExprContext *>(context), predicateIndex);

  default:
    break;
  }
  return true;
}

bool NavSParser::locESempred(LocEContext *_localctx, size_t predicateIndex) {
  switch (predicateIndex) {
    case 0: return precpred(_ctx, 3);
    case 1: return precpred(_ctx, 2);

  default:
    break;
  }
  return true;
}

bool NavSParser::exprSempred(ExprContext *_localctx, size_t predicateIndex) {
  switch (predicateIndex) {
    case 2: return precpred(_ctx, 5);
    case 3: return precpred(_ctx, 3);

  default:
    break;
  }
  return true;
}

// Static vars and initialization.
std::vector<dfa::DFA> NavSParser::_decisionToDFA;
atn::PredictionContextCache NavSParser::_sharedContextCache;

// We own the ATN which in turn owns the ATN states.
atn::ATN NavSParser::_atn;
std::vector<uint16_t> NavSParser::_serializedATN;

std::vector<std::string> NavSParser::_ruleNames = {
  "compilationUnit", "varDef", "pilotDef", "adviceList", "adviceDef", "locE", 
  "stmtList", "exprList", "expr", "primary", "uop", "bop", "locType", "literal"
};

std::vector<std::string> NavSParser::_literalNames = {
  "", "'var'", "'func'", "'def'", "'ause'", "'puse'", "'cuse'", "'ouse'", 
  "'luse'", "'call'", "'and'", "'or'", "'not'", "'pre'", "'post'", "'$'", 
  "'('", "')'", "'{'", "'}'", "'['", "']'", "';'", "','", "'.'", "'='", 
  "'>'", "'<'", "'!'", "'if'", "'else'", "':'", "'=='", "'<='", "'>='", 
  "'!='", "'+'", "'-'", "'*'", "'/'", "'%'", "'+='", "'-='", "'*='", "'/='", 
  "'%='"
};

std::vector<std::string> NavSParser::_symbolicNames = {
  "", "VAR", "FUNC", "DEF", "AUSE", "PUSE", "CUSE", "OUSE", "LUSE", "CALL", 
  "AND", "OR", "NOT", "PRE", "POST", "ARGSYM", "LPAREN", "RPAREN", "LBRACE", 
  "RBRACE", "LBRACK", "RBRACK", "SEMI", "COMMA", "DOT", "ASSIGN", "GT", 
  "LT", "BANG", "IF", "ELSE", "COLON", "EQUAL", "LE", "GE", "NOTEQUAL", 
  "ADD", "SUB", "MUL", "DIV", "MOD", "ADD_ASSIGN", "SUB_ASSIGN", "MUL_ASSIGN", 
  "DIV_ASSIGN", "MOD_ASSIGN", "BOOL_LITERAL", "DECIMAL_LITERAL", "FLOAT_LITERAL", 
  "CHAR_LITERAL", "STRING_LITERAL", "WS", "COMMENT", "LINE_COMMENT", "IDENTIFIER", 
  "ARG"
};

dfa::Vocabulary NavSParser::_vocabulary(_literalNames, _symbolicNames);

std::vector<std::string> NavSParser::_tokenNames;

NavSParser::Initializer::Initializer() {
	for (size_t i = 0; i < _symbolicNames.size(); ++i) {
		std::string name = _vocabulary.getLiteralName(i);
		if (name.empty()) {
			name = _vocabulary.getSymbolicName(i);
		}

		if (name.empty()) {
			_tokenNames.push_back("<INVALID>");
		} else {
      _tokenNames.push_back(name);
    }
	}

  static const uint16_t serializedATNSegment0[] = {
    0x3, 0x608b, 0xa72a, 0x8133, 0xb9ed, 0x417c, 0x3be7, 0x7786, 0x5964, 
       0x3, 0x39, 0xd2, 0x4, 0x2, 0x9, 0x2, 0x4, 0x3, 0x9, 0x3, 0x4, 0x4, 
       0x9, 0x4, 0x4, 0x5, 0x9, 0x5, 0x4, 0x6, 0x9, 0x6, 0x4, 0x7, 0x9, 
       0x7, 0x4, 0x8, 0x9, 0x8, 0x4, 0x9, 0x9, 0x9, 0x4, 0xa, 0x9, 0xa, 
       0x4, 0xb, 0x9, 0xb, 0x4, 0xc, 0x9, 0xc, 0x4, 0xd, 0x9, 0xd, 0x4, 
       0xe, 0x9, 0xe, 0x4, 0xf, 0x9, 0xf, 0x3, 0x2, 0x7, 0x2, 0x20, 0xa, 
       0x2, 0xc, 0x2, 0xe, 0x2, 0x23, 0xb, 0x2, 0x3, 0x2, 0x3, 0x2, 0x3, 
       0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 
       0x3, 0x3, 0x3, 0x3, 0x3, 0x4, 0x3, 0x4, 0x3, 0x4, 0x3, 0x4, 0x3, 
       0x4, 0x3, 0x4, 0x5, 0x4, 0x36, 0xa, 0x4, 0x3, 0x4, 0x3, 0x4, 0x3, 
       0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 0x5, 0x5, 
       0x40, 0xa, 0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 
       0x3, 0x5, 0x7, 0x5, 0x48, 0xa, 0x5, 0xc, 0x5, 0xe, 0x5, 0x4b, 0xb, 
       0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 0x6, 0x3, 0x6, 0x3, 0x6, 0x3, 0x6, 
       0x3, 0x6, 0x3, 0x6, 0x3, 0x6, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 
       0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x5, 0x7, 
       0x5f, 0xa, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 
       0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 
       0x7, 0x3, 0x7, 0x3, 0x7, 0x5, 0x7, 0x6f, 0xa, 0x7, 0x3, 0x7, 0x3, 
       0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 
       0x3, 0x7, 0x3, 0x7, 0x7, 0x7, 0x7b, 0xa, 0x7, 0xc, 0x7, 0xe, 0x7, 
       0x7e, 0xb, 0x7, 0x3, 0x8, 0x3, 0x8, 0x3, 0x8, 0x3, 0x8, 0x7, 0x8, 
       0x84, 0xa, 0x8, 0xc, 0x8, 0xe, 0x8, 0x87, 0xb, 0x8, 0x3, 0x9, 0x3, 
       0x9, 0x3, 0x9, 0x3, 0x9, 0x3, 0x9, 0x3, 0x9, 0x7, 0x9, 0x8f, 0xa, 
       0x9, 0xc, 0x9, 0xe, 0x9, 0x92, 0xb, 0x9, 0x3, 0xa, 0x3, 0xa, 0x3, 
       0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 
       0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 
       0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 
       0x3, 0xa, 0x3, 0xa, 0x5, 0xa, 0xac, 0xa, 0xa, 0x3, 0xa, 0x3, 0xa, 
       0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 
       0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x7, 0xa, 0xba, 0xa, 0xa, 0xc, 
       0xa, 0xe, 0xa, 0xbd, 0xb, 0xa, 0x3, 0xb, 0x3, 0xb, 0x3, 0xb, 0x3, 
       0xb, 0x3, 0xb, 0x3, 0xb, 0x3, 0xb, 0x3, 0xb, 0x3, 0xb, 0x5, 0xb, 
       0xc8, 0xa, 0xb, 0x3, 0xc, 0x3, 0xc, 0x3, 0xd, 0x3, 0xd, 0x3, 0xe, 
       0x3, 0xe, 0x3, 0xf, 0x3, 0xf, 0x3, 0xf, 0x2, 0x4, 0xc, 0x12, 0x10, 
       0x2, 0x4, 0x6, 0x8, 0xa, 0xc, 0xe, 0x10, 0x12, 0x14, 0x16, 0x18, 
       0x1a, 0x1c, 0x2, 0x6, 0x4, 0x2, 0x1b, 0x1b, 0x2b, 0x2f, 0x5, 0x2, 
       0xc, 0xd, 0x1c, 0x1d, 0x22, 0x2a, 0x3, 0x2, 0x4, 0xb, 0x3, 0x2, 0x30, 
       0x34, 0x2, 0xd9, 0x2, 0x21, 0x3, 0x2, 0x2, 0x2, 0x4, 0x26, 0x3, 0x2, 
       0x2, 0x2, 0x6, 0x2f, 0x3, 0x2, 0x2, 0x2, 0x8, 0x39, 0x3, 0x2, 0x2, 
       0x2, 0xa, 0x4e, 0x3, 0x2, 0x2, 0x2, 0xc, 0x6e, 0x3, 0x2, 0x2, 0x2, 
       0xe, 0x85, 0x3, 0x2, 0x2, 0x2, 0x10, 0x88, 0x3, 0x2, 0x2, 0x2, 0x12, 
       0xab, 0x3, 0x2, 0x2, 0x2, 0x14, 0xc7, 0x3, 0x2, 0x2, 0x2, 0x16, 0xc9, 
       0x3, 0x2, 0x2, 0x2, 0x18, 0xcb, 0x3, 0x2, 0x2, 0x2, 0x1a, 0xcd, 0x3, 
       0x2, 0x2, 0x2, 0x1c, 0xcf, 0x3, 0x2, 0x2, 0x2, 0x1e, 0x20, 0x5, 0x6, 
       0x4, 0x2, 0x1f, 0x1e, 0x3, 0x2, 0x2, 0x2, 0x20, 0x23, 0x3, 0x2, 0x2, 
       0x2, 0x21, 0x1f, 0x3, 0x2, 0x2, 0x2, 0x21, 0x22, 0x3, 0x2, 0x2, 0x2, 
       0x22, 0x24, 0x3, 0x2, 0x2, 0x2, 0x23, 0x21, 0x3, 0x2, 0x2, 0x2, 0x24, 
       0x25, 0x7, 0x2, 0x2, 0x3, 0x25, 0x3, 0x3, 0x2, 0x2, 0x2, 0x26, 0x27, 
       0x7, 0x38, 0x2, 0x2, 0x27, 0x28, 0x8, 0x3, 0x1, 0x2, 0x28, 0x29, 
       0x7, 0x1b, 0x2, 0x2, 0x29, 0x2a, 0x5, 0x1c, 0xf, 0x2, 0x2a, 0x2b, 
       0x8, 0x3, 0x1, 0x2, 0x2b, 0x2c, 0x3, 0x2, 0x2, 0x2, 0x2c, 0x2d, 0x7, 
       0x18, 0x2, 0x2, 0x2d, 0x2e, 0x8, 0x3, 0x1, 0x2, 0x2e, 0x5, 0x3, 0x2, 
       0x2, 0x2, 0x2f, 0x30, 0x7, 0x38, 0x2, 0x2, 0x30, 0x35, 0x8, 0x4, 
       0x1, 0x2, 0x31, 0x32, 0x7, 0x21, 0x2, 0x2, 0x32, 0x33, 0x5, 0xc, 
       0x7, 0x2, 0x33, 0x34, 0x8, 0x4, 0x1, 0x2, 0x34, 0x36, 0x3, 0x2, 0x2, 
       0x2, 0x35, 0x31, 0x3, 0x2, 0x2, 0x2, 0x35, 0x36, 0x3, 0x2, 0x2, 0x2, 
       0x36, 0x37, 0x3, 0x2, 0x2, 0x2, 0x37, 0x38, 0x5, 0x8, 0x5, 0x2, 0x38, 
       0x7, 0x3, 0x2, 0x2, 0x2, 0x39, 0x3a, 0x7, 0x14, 0x2, 0x2, 0x3a, 0x49, 
       0x8, 0x5, 0x1, 0x2, 0x3b, 0x48, 0x5, 0x4, 0x3, 0x2, 0x3c, 0x40, 0x5, 
       0xa, 0x6, 0x2, 0x3d, 0x3e, 0x7, 0xf, 0x2, 0x2, 0x3e, 0x40, 0x5, 0xa, 
       0x6, 0x2, 0x3f, 0x3c, 0x3, 0x2, 0x2, 0x2, 0x3f, 0x3d, 0x3, 0x2, 0x2, 
       0x2, 0x40, 0x41, 0x3, 0x2, 0x2, 0x2, 0x41, 0x42, 0x8, 0x5, 0x1, 0x2, 
       0x42, 0x48, 0x3, 0x2, 0x2, 0x2, 0x43, 0x44, 0x7, 0x10, 0x2, 0x2, 
       0x44, 0x45, 0x5, 0xa, 0x6, 0x2, 0x45, 0x46, 0x8, 0x5, 0x1, 0x2, 0x46, 
       0x48, 0x3, 0x2, 0x2, 0x2, 0x47, 0x3b, 0x3, 0x2, 0x2, 0x2, 0x47, 0x3f, 
       0x3, 0x2, 0x2, 0x2, 0x47, 0x43, 0x3, 0x2, 0x2, 0x2, 0x48, 0x4b, 0x3, 
       0x2, 0x2, 0x2, 0x49, 0x47, 0x3, 0x2, 0x2, 0x2, 0x49, 0x4a, 0x3, 0x2, 
       0x2, 0x2, 0x4a, 0x4c, 0x3, 0x2, 0x2, 0x2, 0x4b, 0x49, 0x3, 0x2, 0x2, 
       0x2, 0x4c, 0x4d, 0x7, 0x15, 0x2, 0x2, 0x4d, 0x9, 0x3, 0x2, 0x2, 0x2, 
       0x4e, 0x4f, 0x5, 0xc, 0x7, 0x2, 0x4f, 0x50, 0x8, 0x6, 0x1, 0x2, 0x50, 
       0x51, 0x7, 0x14, 0x2, 0x2, 0x51, 0x52, 0x5, 0xe, 0x8, 0x2, 0x52, 
       0x53, 0x8, 0x6, 0x1, 0x2, 0x53, 0x54, 0x7, 0x15, 0x2, 0x2, 0x54, 
       0xb, 0x3, 0x2, 0x2, 0x2, 0x55, 0x56, 0x8, 0x7, 0x1, 0x2, 0x56, 0x57, 
       0x5, 0x1a, 0xe, 0x2, 0x57, 0x58, 0x8, 0x7, 0x1, 0x2, 0x58, 0x5e, 
       0x7, 0x12, 0x2, 0x2, 0x59, 0x5a, 0x7, 0x38, 0x2, 0x2, 0x5a, 0x5f, 
       0x8, 0x7, 0x1, 0x2, 0x5b, 0x5c, 0x5, 0x1c, 0xf, 0x2, 0x5c, 0x5d, 
       0x8, 0x7, 0x1, 0x2, 0x5d, 0x5f, 0x3, 0x2, 0x2, 0x2, 0x5e, 0x59, 0x3, 
       0x2, 0x2, 0x2, 0x5e, 0x5b, 0x3, 0x2, 0x2, 0x2, 0x5f, 0x60, 0x3, 0x2, 
       0x2, 0x2, 0x60, 0x61, 0x7, 0x13, 0x2, 0x2, 0x61, 0x62, 0x8, 0x7, 
       0x1, 0x2, 0x62, 0x6f, 0x3, 0x2, 0x2, 0x2, 0x63, 0x64, 0x7, 0xb, 0x2, 
       0x2, 0x64, 0x65, 0x7, 0x12, 0x2, 0x2, 0x65, 0x66, 0x7, 0x11, 0x2, 
       0x2, 0x66, 0x67, 0x5, 0x18, 0xd, 0x2, 0x67, 0x68, 0x7, 0x13, 0x2, 
       0x2, 0x68, 0x69, 0x8, 0x7, 0x1, 0x2, 0x69, 0x6f, 0x3, 0x2, 0x2, 0x2, 
       0x6a, 0x6b, 0x7, 0xe, 0x2, 0x2, 0x6b, 0x6c, 0x5, 0xc, 0x7, 0x3, 0x6c, 
       0x6d, 0x8, 0x7, 0x1, 0x2, 0x6d, 0x6f, 0x3, 0x2, 0x2, 0x2, 0x6e, 0x55, 
       0x3, 0x2, 0x2, 0x2, 0x6e, 0x63, 0x3, 0x2, 0x2, 0x2, 0x6e, 0x6a, 0x3, 
       0x2, 0x2, 0x2, 0x6f, 0x7c, 0x3, 0x2, 0x2, 0x2, 0x70, 0x71, 0xc, 0x5, 
       0x2, 0x2, 0x71, 0x72, 0x7, 0xc, 0x2, 0x2, 0x72, 0x73, 0x5, 0xc, 0x7, 
       0x6, 0x73, 0x74, 0x8, 0x7, 0x1, 0x2, 0x74, 0x7b, 0x3, 0x2, 0x2, 0x2, 
       0x75, 0x76, 0xc, 0x4, 0x2, 0x2, 0x76, 0x77, 0x7, 0xd, 0x2, 0x2, 0x77, 
       0x78, 0x5, 0xc, 0x7, 0x5, 0x78, 0x79, 0x8, 0x7, 0x1, 0x2, 0x79, 0x7b, 
       0x3, 0x2, 0x2, 0x2, 0x7a, 0x70, 0x3, 0x2, 0x2, 0x2, 0x7a, 0x75, 0x3, 
       0x2, 0x2, 0x2, 0x7b, 0x7e, 0x3, 0x2, 0x2, 0x2, 0x7c, 0x7a, 0x3, 0x2, 
       0x2, 0x2, 0x7c, 0x7d, 0x3, 0x2, 0x2, 0x2, 0x7d, 0xd, 0x3, 0x2, 0x2, 
       0x2, 0x7e, 0x7c, 0x3, 0x2, 0x2, 0x2, 0x7f, 0x80, 0x5, 0x12, 0xa, 
       0x2, 0x80, 0x81, 0x8, 0x8, 0x1, 0x2, 0x81, 0x82, 0x7, 0x18, 0x2, 
       0x2, 0x82, 0x84, 0x3, 0x2, 0x2, 0x2, 0x83, 0x7f, 0x3, 0x2, 0x2, 0x2, 
       0x84, 0x87, 0x3, 0x2, 0x2, 0x2, 0x85, 0x83, 0x3, 0x2, 0x2, 0x2, 0x85, 
       0x86, 0x3, 0x2, 0x2, 0x2, 0x86, 0xf, 0x3, 0x2, 0x2, 0x2, 0x87, 0x85, 
       0x3, 0x2, 0x2, 0x2, 0x88, 0x89, 0x5, 0x12, 0xa, 0x2, 0x89, 0x90, 
       0x8, 0x9, 0x1, 0x2, 0x8a, 0x8b, 0x7, 0x19, 0x2, 0x2, 0x8b, 0x8c, 
       0x5, 0x12, 0xa, 0x2, 0x8c, 0x8d, 0x8, 0x9, 0x1, 0x2, 0x8d, 0x8f, 
       0x3, 0x2, 0x2, 0x2, 0x8e, 0x8a, 0x3, 0x2, 0x2, 0x2, 0x8f, 0x92, 0x3, 
       0x2, 0x2, 0x2, 0x90, 0x8e, 0x3, 0x2, 0x2, 0x2, 0x90, 0x91, 0x3, 0x2, 
       0x2, 0x2, 0x91, 0x11, 0x3, 0x2, 0x2, 0x2, 0x92, 0x90, 0x3, 0x2, 0x2, 
       0x2, 0x93, 0x94, 0x8, 0xa, 0x1, 0x2, 0x94, 0x95, 0x5, 0x14, 0xb, 
       0x2, 0x95, 0x96, 0x8, 0xa, 0x1, 0x2, 0x96, 0xac, 0x3, 0x2, 0x2, 0x2, 
       0x97, 0x98, 0x7, 0x38, 0x2, 0x2, 0x98, 0x99, 0x9, 0x2, 0x2, 0x2, 
       0x99, 0x9a, 0x5, 0x12, 0xa, 0x8, 0x9a, 0x9b, 0x8, 0xa, 0x1, 0x2, 
       0x9b, 0xac, 0x3, 0x2, 0x2, 0x2, 0x9c, 0x9d, 0x5, 0x16, 0xc, 0x2, 
       0x9d, 0x9e, 0x5, 0x12, 0xa, 0x6, 0x9e, 0x9f, 0x8, 0xa, 0x1, 0x2, 
       0x9f, 0xac, 0x3, 0x2, 0x2, 0x2, 0xa0, 0xa1, 0x7, 0x38, 0x2, 0x2, 
       0xa1, 0xa2, 0x7, 0x12, 0x2, 0x2, 0xa2, 0xa3, 0x5, 0x10, 0x9, 0x2, 
       0xa3, 0xa4, 0x7, 0x13, 0x2, 0x2, 0xa4, 0xa5, 0x8, 0xa, 0x1, 0x2, 
       0xa5, 0xac, 0x3, 0x2, 0x2, 0x2, 0xa6, 0xa7, 0x7, 0x12, 0x2, 0x2, 
       0xa7, 0xa8, 0x5, 0x10, 0x9, 0x2, 0xa8, 0xa9, 0x7, 0x13, 0x2, 0x2, 
       0xa9, 0xaa, 0x8, 0xa, 0x1, 0x2, 0xaa, 0xac, 0x3, 0x2, 0x2, 0x2, 0xab, 
       0x93, 0x3, 0x2, 0x2, 0x2, 0xab, 0x97, 0x3, 0x2, 0x2, 0x2, 0xab, 0x9c, 
       0x3, 0x2, 0x2, 0x2, 0xab, 0xa0, 0x3, 0x2, 0x2, 0x2, 0xab, 0xa6, 0x3, 
       0x2, 0x2, 0x2, 0xac, 0xbb, 0x3, 0x2, 0x2, 0x2, 0xad, 0xae, 0xc, 0x7, 
       0x2, 0x2, 0xae, 0xaf, 0x5, 0x18, 0xd, 0x2, 0xaf, 0xb0, 0x5, 0x12, 
       0xa, 0x8, 0xb0, 0xb1, 0x8, 0xa, 0x1, 0x2, 0xb1, 0xba, 0x3, 0x2, 0x2, 
       0x2, 0xb2, 0xb3, 0xc, 0x5, 0x2, 0x2, 0xb3, 0xb4, 0x7, 0x1f, 0x2, 
       0x2, 0xb4, 0xb5, 0x5, 0x12, 0xa, 0x2, 0xb5, 0xb6, 0x7, 0x20, 0x2, 
       0x2, 0xb6, 0xb7, 0x5, 0x12, 0xa, 0x6, 0xb7, 0xb8, 0x8, 0xa, 0x1, 
       0x2, 0xb8, 0xba, 0x3, 0x2, 0x2, 0x2, 0xb9, 0xad, 0x3, 0x2, 0x2, 0x2, 
       0xb9, 0xb2, 0x3, 0x2, 0x2, 0x2, 0xba, 0xbd, 0x3, 0x2, 0x2, 0x2, 0xbb, 
       0xb9, 0x3, 0x2, 0x2, 0x2, 0xbb, 0xbc, 0x3, 0x2, 0x2, 0x2, 0xbc, 0x13, 
       0x3, 0x2, 0x2, 0x2, 0xbd, 0xbb, 0x3, 0x2, 0x2, 0x2, 0xbe, 0xbf, 0x7, 
       0x12, 0x2, 0x2, 0xbf, 0xc0, 0x5, 0x12, 0xa, 0x2, 0xc0, 0xc1, 0x7, 
       0x13, 0x2, 0x2, 0xc1, 0xc8, 0x3, 0x2, 0x2, 0x2, 0xc2, 0xc3, 0x7, 
       0x39, 0x2, 0x2, 0xc3, 0xc8, 0x8, 0xb, 0x1, 0x2, 0xc4, 0xc5, 0x7, 
       0x38, 0x2, 0x2, 0xc5, 0xc8, 0x8, 0xb, 0x1, 0x2, 0xc6, 0xc8, 0x5, 
       0x1c, 0xf, 0x2, 0xc7, 0xbe, 0x3, 0x2, 0x2, 0x2, 0xc7, 0xc2, 0x3, 
       0x2, 0x2, 0x2, 0xc7, 0xc4, 0x3, 0x2, 0x2, 0x2, 0xc7, 0xc6, 0x3, 0x2, 
       0x2, 0x2, 0xc8, 0x15, 0x3, 0x2, 0x2, 0x2, 0xc9, 0xca, 0x7, 0xe, 0x2, 
       0x2, 0xca, 0x17, 0x3, 0x2, 0x2, 0x2, 0xcb, 0xcc, 0x9, 0x3, 0x2, 0x2, 
       0xcc, 0x19, 0x3, 0x2, 0x2, 0x2, 0xcd, 0xce, 0x9, 0x4, 0x2, 0x2, 0xce, 
       0x1b, 0x3, 0x2, 0x2, 0x2, 0xcf, 0xd0, 0x9, 0x5, 0x2, 0x2, 0xd0, 0x1d, 
       0x3, 0x2, 0x2, 0x2, 0x11, 0x21, 0x35, 0x3f, 0x47, 0x49, 0x5e, 0x6e, 
       0x7a, 0x7c, 0x85, 0x90, 0xab, 0xb9, 0xbb, 0xc7, 
  };

  _serializedATN.insert(_serializedATN.end(), serializedATNSegment0,
    serializedATNSegment0 + sizeof(serializedATNSegment0) / sizeof(serializedATNSegment0[0]));


  atn::ATNDeserializer deserializer;
  _atn = deserializer.deserialize(_serializedATN);

  size_t count = _atn.getNumberOfDecisions();
  _decisionToDFA.reserve(count);
  for (size_t i = 0; i < count; i++) { 
    _decisionToDFA.emplace_back(_atn.getDecisionState(i), i);
  }
}

NavSParser::Initializer NavSParser::_init;
