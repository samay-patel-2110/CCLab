%%
 [0-9]+  {printf("Got number %s of len %d\n",yytext,yyleng);}
 [a-zA-Z][a-zA-Z0-9]*  {printf("Got variable %s of len %d\n",yytext,yyleng);}
 \n         {printf("New Line %c", yytext[0]);}
 . {printf("ignoring %c",yytext[0]);}
%%
int main()
{
 printf("Enter: \n");
yylex();
return 0;
 }

