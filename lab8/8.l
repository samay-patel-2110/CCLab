%{
#include "y.tab.h"
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
[a-z]+             { yylval.strval = strdup(yytext); return VAR; }
[ \t\r\n]          { } /* Ignore whitespace */
.                  { yyerror("Invalid input"); }

%%

int yywrap() {
    return 1;
}