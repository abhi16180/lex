%{
//to count the number of printf and scanf and replace them with writef and readf
#include<stdio.h>
#include<string.h>
int count=0;

%}


%%
[a-zA-Z]+    { if(strcmp(yytext, "printf")==0)
                   fprintf(yyout, "%s", "writef");
                else if(strcmp(yytext,"scanf")==0)
                    fprintf(yyout,"%s","readf");
                else
                    fprintf(yyout, "%s", yytext);}
.            fprintf(yyout, "%s", yytext);
%%


int yywrap(){
    return 1;
}


int main(){
extern FILE *yyin,*yyout;
yyin=fopen("input.c","r");
yyout=fopen("out.txt","w");
yylex();
return 0;
}