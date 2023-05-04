%{
/*calcu.y*/

%}
%token  NL PLUS MINUS INT
%%
program: expr NL { }
     	;

expr : expr PLUS expr   { }
| expr MINUS expr  { }
| INT              { }
	;


 %%

 /*auxillary c fns*/
 int yyerror(char *s)
 {
 printf("Error:%s\n",s);
 }
int main()
 {
yypars();
return 0;

 }

