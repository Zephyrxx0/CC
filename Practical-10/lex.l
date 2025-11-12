//Ayush Mahajan, 23070521027

%{
    #include <stdio.h>
    #include "parser.tab.h"
%}

%%
[0-9]+ { yylval.num = atoi(yytext); return NUMBER; }
[-+*/()] { return yytext[0]; }
[ \t] ; /*Skip Whitespace*/
\n { return '\n'; }
. { printf("Invalid Character: %s\n", yytext); } 
%%

int yywrap(void) {
    return 1;
}


