lexer grammar FunloadLexer;

AND
   : A N D
   ;
AS
   : A S
   ;
PLUS
   : '+'
   ;
MINUS
   : '-'
   ;
CONTINUATION
   : '-' LINE_NUMBER
   ;
DSN
   : D S N
   ;
DOUBLE_SLASH
   : '//'
   ;
EACH
   : E A C H
   ;
ENDFOR
   : E N D' 'F O R
   ;
ENDIF
   : E N D' 'I F
   ;
ENDSELECT
   : E N D' 'S E L E C T
   ;
EXISTS
   : E X I S T S
   ;
EQUALS
   : '='
   ;
FOR
   : F O R
   ;
IF
   : I F
   ;
LOGOUT
   : L O G O U T
   ;
OPEN
   : O P E N
   ;
OR
   : O R
   ;
OTHERWISE
   : O T H E R W I S E
   ;
OUTPUT
   : O U T P U T
   ;
PUT
   : P U T
   ;
RECORD
   : R E C O R D
   ;
SELECT
   : S E L E C T
   ;
SKIPKeyword
   : S K I P
   ;
STRING
   : S T R I N G
   ;
WHEN
   : W H E N
   ;
ASTERISK
   : '*'
   ;
COMMA
    : ','
    ;
LPAREN
   : '('
   ;
RPAREN
   : ')'
   ;
PERCENT
   : '%'
   ;
POUND
   : '#'
   ;
JCLCOMMAND
   : '//SYS' UPPERCASE+
   | '//FUN' UPPERCASE+
   | '//GET' UPPERCASE+
   | '//' UPPERCASE+
   ;
STRING_LITERAL
   : '\'' (~['\\\r\n] | ESCAPE_SEQUENCE)* '\''
   ;
IDENTIFIER
   : ('A' .. 'Z' ) ('A' .. 'Z' | '0' .. '9' | '.')*
   | ('A' .. 'Z' | '0' .. '9') ('A' .. 'Z' ) ('A' .. 'Z' | '0' .. '9' | '.')*
   ;
WHITESPACE:         [ \t\r\n]+    -> skip;
COMMENT:            '//*' ~[\r\n]* -> channel(HIDDEN);
LINE_NUMBER: 
   DEC_DIGIT DEC_DIGIT DEC_DIGIT DEC_DIGIT DEC_DIGIT DEC_DIGIT DEC_DIGIT DEC_DIGIT
   ;
INTEGER
   : DEC_DIGIT+
   ;
ANY : . ;

fragment DEC_DOT_DEC:  (DEC_DIGIT+ '.' DEC_DIGIT+ |  DEC_DIGIT+ '.' | '.' DEC_DIGIT+);
fragment HEX_DIGIT:    [0-9A-F];
fragment DEC_DIGIT:    [0-9];

fragment ESCAPE_SEQUENCE
    : '\\' [btnfr"'\\]
    | '\\' ([0-3]? [0-7])? [0-7]
    | '\\' 'u'+ HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT
    ;
fragment UNICODE : 'u' HEX HEX HEX HEX ;
fragment HEX : [0-9a-fA-F] ;
fragment UPPERCASE: [A-Z];

fragment A
   : ('a' | 'A')
   ;
fragment B
   : ('b' | 'B')
   ;
fragment C
   : ('c' | 'C')
   ;
fragment D
   : ('d' | 'D')
   ;
fragment E
   : ('e' | 'E')
   ;
fragment F
   : ('f' | 'F')
   ;
fragment G
   : ('g' | 'G')
   ;
fragment H
   : ('h' | 'H')
   ;
fragment I
   : ('i' | 'I')
   ;
fragment J
   : ('j' | 'J')
   ;
fragment K
   : ('k' | 'K')
   ;
fragment L
   : ('l' | 'L')
   ;
fragment M
   : ('m' | 'M')
   ;
fragment N
   : ('n' | 'N')
   ;
fragment O
   : ('o' | 'O')
   ;
fragment P
   : ('p' | 'P')
   ;
fragment Q
   : ('q' | 'Q')
   ;
fragment R
   : ('r' | 'R')
   ;
fragment S
   : ('s' | 'S')
   ;
fragment T
   : ('t' | 'T')
   ;
fragment U
   : ('u' | 'U')
   ;
fragment V
   : ('v' | 'V')
   ;
fragment W
   : ('w' | 'W')
   ;
fragment X
   : ('x' | 'X')
   ;
fragment Y
   : ('y' | 'Y')
   ;
fragment Z
   : ('z' | 'Z')
   ;
