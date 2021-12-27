%{
#include<stdio.h>
#include<string.h>
int max=0;
char a[100];
%}


%%


"printf" { fprintf(yyout,"%s","writef");}
"scanf"  { fprintf(yyout,"%s","readf");}
. {fprintf(yyout,"%s",yytext);}


%%



int yywrap(){
    return 1;
}



int main(){
    extern FILE *yyin,*yyout;
    yyin=fopen("input.c","r");
    yyout=fopen("out2.txt","w");
    yylex();
  
}
