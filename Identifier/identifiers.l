%{

#include<stdio.h>

%}

%%

^[aA-zZ _][aA-zZ _ 0-9]*$ {printf("Valid identifier\n");}
^.*$ {printf("Invalid\n");}

%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter the string to check if its valid identifier or not\n");
    yylex();
    return 0;
}