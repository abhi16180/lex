%{
#include<stdio.h>
#include<stdlib.h>

%}


%%

"<".*">"  {fprintf(yyout,"%s",yytext);}
.*   {printf("Not an html tag")}
 
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