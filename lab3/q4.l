%{
#include<stdio.h>
int i;
%}

%%
[0 - 9] +{ i = atoi (yytext);
  if (i % 2 == 0)
    {
      printf ("even");
    }
  else
    {
      printf ("odd");
    }
}

%%
int yywrap (){}

int main ()
{
yylex ();
return 0; }
