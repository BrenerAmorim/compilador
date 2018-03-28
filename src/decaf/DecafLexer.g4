
lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
  TK_class
}
SUM: '+';
EXP:'^';
REST:'%';
EXCL:'!';
AND: '&&';
OR: '||';

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\''(' '..'!' | '#'..'&' | '('..'[' | ']'..'~' )'\'';
STRING : '"' (ESC~'"')* '"';


fragment
ESC :  '\\' ('n'|'"');

