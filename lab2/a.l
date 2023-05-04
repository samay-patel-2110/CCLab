%%
[abc]   {printf("\nGot a or b or c:%s:%d\n",yytext,yytext[0]);}
abc     {printf("Got \"abc\": %s\n",yytext);}
[a-f]   {printf("Got a to f :%s:%d\n",yytext,yytext[0]);}
[^xyz]  {printf("not x or y or z: %s:%d\n",yytext,yytext[0]);}
