%%
%class Lexer
%unicode
%cup
%{
%}
ESPACO = [ \t\r\n]+
STRING = \"([^\"]*)\"
TEXTO = [^<>]+
%%
{ESPACO} { }
"<a" { return new Symbol(sym.A_OPEN); }
"href="{STRING} { return new Symbol(sym.HREF, yytext().substring(6, yytext().length()-1)); }
">" { return new Symbol(sym.TAG_CLOSE); }
"</a>" { return new Symbol(sym.A_CLOSE); }
"<img" { return new Symbol(sym.IMG_OPEN); }
"src="{STRING} { return new Symbol(sym.SRC, yytext().substring(5, yytext().length()-1)); }
"/>" { return new Symbol(sym.TAG_SELFCLOSE); }
{TEXTO} { return new Symbol(sym.TEXT, yytext().trim()); }