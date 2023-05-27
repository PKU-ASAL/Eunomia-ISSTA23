
// Generated from NavSLexer.g4 by ANTLR 4.9.2

#pragma once


#include "antlr4-runtime.h"




class  NavSLexer : public antlr4::Lexer {
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

  explicit NavSLexer(antlr4::CharStream *input);
  ~NavSLexer();

  virtual std::string getGrammarFileName() const override;
  virtual const std::vector<std::string>& getRuleNames() const override;

  virtual const std::vector<std::string>& getChannelNames() const override;
  virtual const std::vector<std::string>& getModeNames() const override;
  virtual const std::vector<std::string>& getTokenNames() const override; // deprecated, use vocabulary instead
  virtual antlr4::dfa::Vocabulary& getVocabulary() const override;

  virtual const std::vector<uint16_t> getSerializedATN() const override;
  virtual const antlr4::atn::ATN& getATN() const override;

private:
  static std::vector<antlr4::dfa::DFA> _decisionToDFA;
  static antlr4::atn::PredictionContextCache _sharedContextCache;
  static std::vector<std::string> _ruleNames;
  static std::vector<std::string> _tokenNames;
  static std::vector<std::string> _channelNames;
  static std::vector<std::string> _modeNames;

  static std::vector<std::string> _literalNames;
  static std::vector<std::string> _symbolicNames;
  static antlr4::dfa::Vocabulary _vocabulary;
  static antlr4::atn::ATN _atn;
  static std::vector<uint16_t> _serializedATN;


  // Individual action functions triggered by action() above.

  // Individual semantic predicate functions triggered by sempred() above.

  struct Initializer {
    Initializer();
  };
  static Initializer _init;
};

