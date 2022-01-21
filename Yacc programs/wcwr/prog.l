%{
#include "y.tab.h"
%}

%%

[aA] {return A;}
[bB] {return B;}
[cC] {return C;}
\n   {return NL;}
.    {return yytext[0];}


%%


int yywrap(){
    
}