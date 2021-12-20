%{
//count number of strings having length 3 to 8  
#include<stdio.h>
int count=0;

%}    


%%



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