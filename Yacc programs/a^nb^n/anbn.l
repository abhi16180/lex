%{ 
    #include "y.tab.h"
%}

%%
[aA] {return A;}
[bB] {return B;}
\n {return NL;}
. {return yytext[0];}
%%
int yywrap(){
    return 1;
}
// int main()
// {
//     yylex();
//     return 0;
// }