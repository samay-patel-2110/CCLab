%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void yyerror(char *);
int yylex();
%}

%token LCB RCB LB RB SC COMA INT MAIN OP EQ VAR HEADER
%left OP
%start program

%%

program: HEADER INT MAIN LB RB LCB body RCB
        {
            printf("Valid C program!\n");
        } | /* Empty input */ { yyerror("Invalid input"); };

body: decl_stmts prog_stmts
        { printf("Body parsed successfully!\n"); };

decl_stmts: decl_stmt decl_stmts
        { printf("Declaration statement parsed!\n"); }
        | decl_stmt
        { printf("Declaration statement parsed!\n"); };

decl_stmt: INT var_list SC { printf("Declaring variables!\n"); };

var_list: VAR COMA var_list
        { }
        | VAR
        { };

prog_stmts: prog_stmt prog_stmts
        { }
        | prog_stmt
        { };

prog_stmt: VAR EQ a_expn SC
        { printf("Arithmetic expression parsed successfully!\n"); };

a_expn: a_expn OP a_expn
        { }
        | LB a_expn RB
        { }
        | VAR
        { };

%%

int main() {
    yyparse();
    return 0;
}

void yyerror(char *s) {
    printf("Error: %s\n", s);
    exit(1);
}
