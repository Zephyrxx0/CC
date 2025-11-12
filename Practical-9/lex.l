%{
    #include <stdio.h>
    #include "parser.tab.h"
%}
%%
"for"   { return FOR; }
"("     { return LPARSEN; }
")"     { return RPARSEN; }
"{"     { return LBRACE; }
"}"     { return RBRACE; }
";"     { return SEMICOLON; }
"="     { return ASSIGN; }
"<"     { return LT; }
">"     { return GT; }
"+"     { return PLUS; }

[a-aA-Z][a-aA-Z0-9]* { return IDENTIFIER; }
[0-9]+ { return NUMBER; }

[ \t\n ]+   {/*Skip Whitespace*/}

.       {printf("Invalid Character: %s\n", yytext);}

%%

int yywrap(void){
    return 1;
}
