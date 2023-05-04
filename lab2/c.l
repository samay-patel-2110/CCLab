%%
[abc]{2,5}      {printf("Foud 2 to 5 occurences: %s\n",yytext);}

"\n"    {printf("Got new line\n");}
.       {printf("Got rand chars: %c\n",yytext[0]);}

%%
int main(){


printf("custom main pl enter input calling yylex()\n");
yylex();
printf("Done..\n");
}
