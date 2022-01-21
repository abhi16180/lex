%{
    #include<stdio.h>
%}


%token A B C NL 
%start S 

%%

S: A X B C C Y NL {printf("Valid"); return 1;}
X: A X B
|
;

Y:Y C 
|
;


%%

int yyerror(char *msg){
    printf("Not valid");
}

int main(){
    yyparse();
}