%{
#include<stdio.h>
#include<stdlib.h>

%}





%%
\<[^>]*|>   {fprintf(yyout,"%s",yytext);}
.|\n*   {printf("Not an html tag %s \n",yytext);}
 
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