%{
    #include<stdio.h>
%}

%token INT
%left '+''-'
%left '*''/'

%%

Expr:E {printf("Value is %d",$1);return 1;}
;
E: E'+'E {$$=$1+$3;}
|
E'-'E {$$=$1-$3;}
|
E'*'E {$$=$1*$3;}
|
E'/'E  {$$=$1/$3;}
|INT
;

%%

int yyerror(char* msg)
{
    printf("INVALID");
}

int main(){
    yyparse();
}