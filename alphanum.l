%{
    #include <stdio.h>
%}

%%
^[a-zA-Z0-9]*$ {printf("String of length %d\n",yyleng);}
%%

int yywrap()
{
    return 1;
}

void main()
{
    yylex();
}