%{
#include<stdio.h>
#include<stdlib.h>
int singleLine=0;
int multiLine=0;
%}


%%

"//".*             {singleLine++;}

\/\*(.*\n)*.*\*\/  {multiLine++;}
. {;}
 
%%

int yywrap(){
    return 1;
}


int main(){
    extern FILE *yyin,*yyout;
    yyin=fopen("example.c","r");
    yylex();
    printf("Single line comments = %d \nMultiline comments = %d ",singleLine,multiLine);
    return 0;
}