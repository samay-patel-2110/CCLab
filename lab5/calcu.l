%{
/*calcu.l */
 #include "y.tab.h"
 %}


 %%
 "+"     {return PLUS;}
 "-"     {return MINUS;}
 "\n"    {return NL;}
 [0-9]+  {return INT;}
 .       {printf("Invalid charater:%c\n",yytext[0]);}
 %%
 /*no auxilary fns*/
