%{
#include<stdio.h>
#include<stdlib.h>

%}


%%

"<".*">"  {fprintf(yyout,"%s",yytext);}
.*   {;}
 
%%

int yywrap(){
    return 1;
}


int main(){
    extern FILE *yyin,*yyout;
    yyin=fopen("example.html","r");
    yyout=fopen("out.txt","w");
    yylex();
    return 0;
}