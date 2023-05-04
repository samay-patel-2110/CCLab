%%
st(art|op) {printf("Got %s\n",yytext);}
 \n         {printf("New Line %d", yytext[0]);}
           . {printf("ignoring %c",yytext[0]);}
%%
int main()
{
printf("Enter: \n");
yylex();
return 0;
}				   }



