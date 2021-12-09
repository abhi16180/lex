%{
#include<stdio.h>
%}


%%

[0-9]  {printf("Number\n");}
[aA-zZ] { printf("Alphabet\n");}
. { printf("Special character\n");}

%%


int yywrap(){
    return 1;
}


int main(){
    printf("Enter anything\n");  
    yylex();
    return 0;
}

