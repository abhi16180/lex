%{
#include<stdio.h>

%}


%%

<<<<<<< HEAD
(^0$)|(^1+[0-1]*)   { printf("binary"); }

%%



int yywrap(){
    return 1;
}


int main(){
    printf("Enter the number\n");
    yylex();
    return 0;
}