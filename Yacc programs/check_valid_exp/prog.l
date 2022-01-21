%{
#include "y.tab.h"
%}

%%

[0-9]+ {yylval=atoi(yytext); return INT;}
\n   {return 0;}
[\t]
.     {return yytext[0];}

%%


int yywrap(){
    
}