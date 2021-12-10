%{
#include<stdio.h>
%}


%%
(0|[1-9]*)\.([0-9]+?)$ {  printf("Decimal"); }
%%



int yywrap(){
    return 1;
}


int main(){
    printf("Enter the number\n");
    yylex();
    return 0;
}