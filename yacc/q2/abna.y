%{ 
    #include<stdio.h>
    #include<stdlib.h>
%}
%token A B NL

%%
S:A X A NL {printf("valid string\n"); exit(0);}
;
X:B X
|
;
%%
int yyerror(char *msg){
    printf("invalid string\n");
}
int main(){
    yyparse();
}
