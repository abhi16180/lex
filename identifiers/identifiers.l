%{
#include<stdio.h>
%}

%%
^[aA-zZ _][aA-zZ 0-9]*$ { printf("Valid identifier");}
%%

int yywrap()
{
    return 1;
}


int main(){

    printf("Enter string to check if its valid identifier or not\n");
    yylex();
    return 0;
}