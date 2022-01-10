%{ 
    #include "y.tab.h"
%}

%%
[aA] {return A;}
\n {return NL;}
. {return yytext[0];}
%%
int yywrap(){
   return 1;
}