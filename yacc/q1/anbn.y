%{ 
    #include<stdio.h>
%}
%token A B NL

%%
S:A A A X B B B  NL {printf("valid string\n");}
;
X:A X B
|
;
%%
int yyerror(char *msg){
    printf("invalid string\n");
}
int main(){
    yyparse();
}


// bison -yd yaaac.y
// gcc lex.yy.c y.tab.c