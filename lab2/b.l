word    [a-z]+
num     [0-9]+

%%
{word}  {printf("Got word: %s\n",yytext);}
{num}   {printf("Got num: %s\n",yytext);}

"\n"    {printf("Got new line\n");}
.       {printf("Got rand chars: %c\n",yytext[0]);}
