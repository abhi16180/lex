%{
    #include<stdio.h>
%}


%token A B C NL
%start S 

%%

S: B X B  {printf("Valid"); return 1;}
;  
X: B X B
|
A X A
|
C
;
%%


int yyerror(){
    printf("NOT VALID");
}

int main(){
    yyparse();
}