%{
#include "y.tab.h"
extern int yylval;
%}

%%

"{"                { return LCB; }
"}"                { return RCB; }
"("                { return LB; }
")"                { return RB; }
";"                { return SC; }
","                { return COMA; }
"int"              { return INT; }
"main"             { return MAIN; }
"+"                { return OP; }
"-"                { return OP; }
"*"                { return OP; }
"/"                { return OP; }
"="                { return EQ; }
"#include <stdio.h> {return HEADER;}
[a-z]+             { yylval = *yytext - 'a'; return VAR; }
[ \t\r\n]          { } /* Ignore whitespace */
.                  { yyerror("Invalid input"); }

%%

int yywrap() {
    return 1;
}
