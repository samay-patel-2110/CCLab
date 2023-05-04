
%{

#define NUM 100
#define PLUS 101
#define MUL 102
%}


num[0-9]+
%%
{num}   {printf("Got num: %s\n", yytext); return NUM;}
"+"     {printf("Got plus: %s\n", yytext); return PLUS;}
"*"     {printf("Got mul: %s\n", yytext); return MUL;}
%%
int main()
{
        int tok;
	       printf("Enter expr: ");

	               while(tok=yylex()){
		                        printf("tok=%d\n",tok);
					         }

						  }



						   

