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
{ESPACO} { }
"do" { return new Symbol(sym.DO); }
"[" { return new Symbol(sym.LBRA); }
"]" { return new Symbol(sym.RBRA); }
";" { return new Symbol(sym.PV); }
"=" { return new Symbol(sym.ASSIGN); }
"<" { return new Symbol(sym.LT); }
"++" { return new Symbol(sym.INC); }
"out" { return new Symbol(sym.OUT); }
"(" { return new Symbol(sym.LPAREN); }
")" { return new Symbol(sym.RPAREN); }
{ID} { return new Symbol(sym.ID, yytext()); }
{NUM} { return new Symbol(sym.NUM, Integer.parseInt(yytext())); }