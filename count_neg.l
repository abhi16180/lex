%{
#include<stdio.h>
int count=0;
%}


%%

^\-[1-9][0-9]*$  {count++; printf("count of negative numbers = %d",count);}
^.*$   {printf("Not a negative number");}
%%



int yywrap(){
    return 1;
}


int main(){
    printf("Enter the number\n");
    yylex();
    return 0;
}