%{
#include <stdio.h>
%}

%%
one|ONE       printf("1");
two|TWO       printf("2");
three|THREE   printf("3");
%%
int main()
{
    yylex();
    return 0;
}