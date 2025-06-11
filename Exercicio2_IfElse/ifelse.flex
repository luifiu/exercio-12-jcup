%%
%class Lexer
%unicode
%cup
%{
%}
ID = [a-zA-Z_][a-zA-Z0-9_]*
NUM = [0-9]+
ESPACO = [ \t\r\n]+
%%
{ESPACO}           { }
"if"              { return new Symbol(sym.IF); }
"else"            { return new Symbol(sym.ELSE); }
"<"               { return new Symbol(sym.LT); }
";"               { return new Symbol(sym.PV); }
"("               { return new Symbol(sym.LPAREN); }
")"               { return new Symbol(sym.RPAREN); }
"="               { return new Symbol(sym.ASSIGN); }
{ID}              { return new Symbol(sym.ID, yytext()); }
{NUM}             { return new Symbol(sym.NUM, Integer.parseInt(yytext())); }