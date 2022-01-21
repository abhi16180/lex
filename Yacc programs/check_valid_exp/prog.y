%{
    #include<stdio.h>
%}

%token INT
%left '+''-'

%%

Expr:E { printf("Valid"); return 1;}
;
E:INT'+'INT
| INT'-'INT
;

%%

int yyerror(char *msg)
{
    printf("Invalid");
}

int main(){

    yyparse();
}