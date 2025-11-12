%{
#include <stdio.h>
#include <stdlib.h>
#include "parser.tab.h"
%}

%%
[0-9]+ { yylval = atoi(yytext); return NUMBER; }
[-+*/] { return yytext[0]; }
[\t] { /* Skip Whitespace */}
\n {return '\n'; }
. { printf("%s", yytext);}
%%

int yywrap(void) {
    return 1;
}

