parser grammar NavSParser;
options { tokenVocab=NavSLexer; }
@members {
    map<string, map<string, string>> vars; // name: init_value
    map<string, map<int, set<string>>> used_vars;
    map<string, int> conds;
    map<string, map<int, advice>> advs;
    string cur_stub;
    int counter, postcounter;
}

@postinclude {
    #include "global.h"
}


compilationUnit
    : (pilotDef)* EOF
    ;

varDef
    :
    IDENTIFIER {string tval = "null";} (ASSIGN literal {tval = $literal.text;} ) SEMI {
        vars[cur_stub]["halt"] = "False";
        vars[cur_stub]["prior"] = "65536";
        vars[cur_stub]["cons"] = "True";
    }
    ;

pilotDef
    : IDENTIFIER {
        cur_stub = $IDENTIFIER.text;
    } (COLON l=locE {
        conds[cur_stub] = $l.ctx->e_;
    })? adviceList
    ;

adviceList
    : LBRACE { counter = 0, postcounter = -1; }
    (varDef
    | (adviceDef|PRE adviceDef) {
        advs[cur_stub][counter] = $adviceDef.ctx->a;
        counter++;
    }
    | POST adviceDef {
        advs[cur_stub][postcounter] = $adviceDef.ctx->a;
        postcounter--;
    }
    )* RBRACE
    ;

adviceDef
    locals [
        advice a
    ]
    : locE {
        $a.first = $locE.ctx->e_;
    } LBRACE stmtList {
        $a.second = make_pair($stmtList.ctx->a, $stmtList.text);
    } RBRACE
    ;

locE
    locals [
        int e_ = 0;
    ]
    : locType {string id="null";} LPAREN
    (IDENTIFIER {id=$IDENTIFIER.text;} | literal {id=$literal.text;})
    RPAREN {
        string tmp = $locType.text + "_" + id;
        $e_ = PredManager::insert_pred(tmp);
    }
    | CALL LPAREN ARGSYM bop RPAREN {
        string tmp = "call_" + $bop.text;
        $e_ = PredManager::insert_pred(tmp);
    }
    | e1=locE AND e2=locE {
        z3::expr e = (PredManager::get($e1.ctx->e_) && PredManager::get($e2.ctx->e_)).simplify();
        $e_ = PredManager::insert_expr(e);
    }
    | e3=locE OR e4=locE {
        z3::expr e = (PredManager::get($e1.ctx->e_) || PredManager::get($e2.ctx->e_)).simplify();
        $e_ = PredManager::insert_expr(e);
    }
    | NOT e=locE {
        z3::expr e = (!PredManager::get($e.ctx->e_)).simplify();
        $e_ = PredManager::insert_expr(e);
    }
    ;

stmtList
    locals [
        args a
    ]
    : (expr {
        $a.insert($expr.ctx->a.begin(), $expr.ctx->a.end());
    } SEMI)*
    ;

exprList
    locals [
        args a
    ]
    : expr {
        $a = $expr.ctx->a;
    } (COMMA e=expr {
        $a.insert($e.ctx->a.begin(), $e.ctx->a.end());
    })*
    ;

expr // a trivial subset of python expressioins
    locals [
        args a
    ]
    : primary {
        $a = $primary.ctx->a;
    }
    | IDENTIFIER (ASSIGN | ADD_ASSIGN | SUB_ASSIGN | MUL_ASSIGN | DIV_ASSIGN | MOD_ASSIGN) expr {
        $a = $expr.ctx->a;
    }
    | e1=expr bop e2=expr {
        $a.insert($e1.ctx->a.begin(), $e1.ctx->a.end());
        $a.insert($e2.ctx->a.begin(), $e2.ctx->a.end());
    }
    | uop e=expr { $a = $e.ctx->a; }
    | e1=expr 'if' e2=expr 'else' e3=expr {
        $a.insert($e1.ctx->a.begin(), $e1.ctx->a.end());
        $a.insert($e2.ctx->a.begin(), $e2.ctx->a.end());
        $a.insert($e3.ctx->a.begin(), $e3.ctx->a.end());
    }
    | IDENTIFIER LPAREN l=exprList RPAREN {
        $a = $l.ctx->a;
    }
    | LPAREN l=exprList RPAREN {
        $a = $l.ctx->a;
    }
    ;

primary
    locals [
        args a
    ]
    : LPAREN expr RPAREN
    | ARG {
        $a.insert(stoi($ARG.text.substr(1)));
    }
    | IDENTIFIER {
        used_vars[cur_stub][counter].insert($IDENTIFIER.text);
    }
    | literal
    ;

uop
    : NOT
    ;

bop
    : AND | OR
    | GT | LT | EQUAL | LE | GE | NOTEQUAL
    | ADD | SUB | MUL | DIV | MOD
    ;

locType
    : DEF | PUSE | CUSE | OUSE | LUSE | AUSE | FUNC | CALL
    ;

literal
    : DECIMAL_LITERAL
    | FLOAT_LITERAL
    | CHAR_LITERAL
    | STRING_LITERAL
    | BOOL_LITERAL
    ;
