%{ 
    #include<stdio.h>
    #include<stdlib.h>
%}
%token A NL

%%
S:A X A NL {printf("valid string\n"); exit(0);}
;
X:A X 
|
;

%%
int yyerror(char *msg){
    printf("invalid string\n");
}
int main(){
    yyparse();
}
