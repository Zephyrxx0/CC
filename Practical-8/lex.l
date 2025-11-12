//Aniruddha Kale 2307021014

%{
#include <stdio.h>
#include <string.h>
#include "parser.tab.h"
%}

%%

[0-9]+ {yylval = atoi(yytext); return NUMBER;}
[-+*/0] {return yytext[0]; }
[\t] {/* Skip Whitespace */}
\n {return '\n'; }
. {printf("%s", yytext);}

%%

int yywrap(void) {
    return 1;
}
