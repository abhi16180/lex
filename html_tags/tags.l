%{
#include<stdio.h>
#include<stdlib.h>

%}


%%

\<.*\>  {fprintf(yyout,"%s\n",yytext);}
.*   {printf("Not an html tag\n");}
 
%%

int yywrap(){
    return 1;
}


int main(){
    extern FILE *yyin,*yyout;
    yyin=fopen("input.html","r");
    yyout=fopen("out.txt","w");
    yylex();
    return 0;
}