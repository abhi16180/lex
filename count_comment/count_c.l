%{
#include<stdio.h>
int count=0;
%}

%%

^\\ { count++}

%%



int yywrap(){
    return 1;
}


int main(){
    yyin=fopen("test.cpp","r");
    yylex();
    return 0;
}