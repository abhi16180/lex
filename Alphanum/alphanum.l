%{
    #include <stdio.h>
%}

%%
[0-9] {printf("number\n");}
[aA-zZ] {printf("Alphabet\n");}
.  {printf("Special character\n");}
%%

int yywrap()
{
    return 1;
}

void main()
{
    yylex();
}