%{
//count number of strings having length 3 to 8  
#include<stdio.h>
int count=0;

%}    


%%

^[a-z]{3,8}$ {  count++;printf("count %d",count);} //if length of word is between 3&8 the count will increment

%%


int yywrap(){
    return 1;
}


int main(){
printf("Enter the string\n");
yylex();
return 0;
}