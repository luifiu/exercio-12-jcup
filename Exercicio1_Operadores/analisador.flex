/* analisador.flex */
%%
%class Lexer
%unicode
%cup

%{
  int potencia(int base, int exp) {
    int result = 1;
    for (int i = 0; i < exp; i++) result *= base;
    return result;
  }
%}

DIGITO = [0-9]
ESPACO = [ \t\n\r]+

%%
{ESPACO}              { /* ignora */ }
{DIGITO}+             { return new Symbol(sym.NUM, Integer.parseInt(yytext())); }
"+"                   { return new Symbol(sym.PLUS); }
"-"                   { return new Symbol(sym.MINUS); }
"*"                   { return new Symbol(sym.TIMES); }
"/"                   { return new Symbol(sym.DIV); }
"%"                   { return new Symbol(sym.MOD); }
"**"                  { return new Symbol(sym.POW); }
"("                   { return new Symbol(sym.LPAREN); }
")"                   { return new Symbol(sym.RPAREN); }
