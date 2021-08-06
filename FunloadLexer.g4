lexer grammar FunloadLexer;

AND
   : A N D
   ;
AS
   : A S
   ;
AT
   : A T
   ;
PLUS
   : '+'
   ;
MINUS
   : '-'
   ;
DEFAULT
   : D E F A U L T
   ;
DSN
   : D S N
   ;
DOUBLE_SLASH
   : '//'
   ;
ELSE
   : E L S E
   ;
ELSEIF
   : E L S E I F
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
END
   : E N D
   ;
ERRORTRUNCNOREPORT
   : E R R O R' 'T R U N C' 'N O R E P O R T
   ;
EXISTS
   : E X I S T S
   ;
EQUALS
   : '='
   ;
FOREACHRECORD
   : F O R' 'E A C H' 'R E C O R D
   ;
FOR
   : F O R
   ;
FROM
   : F R O M
   ;
GE
   : '>='
   ;
GT
   : '>'
   ;
IF
   : I F
   ;
LE
   : '<='
   ;
LT
   : '<'
   ;
NE
   : N E
   ;
JOB
   : J O B
   ;
LOGOUT
   : L O G O U T
   ;
MISSING
   : M I S S I N G
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
OUT
   : O U T
   ;
PUT
   : P U T
   ;
READY
   : R E A D Y
   ;
RECIN
   : '#'R E C I N
   ;
REPORT
   : R E P O R T
   ;
SELECT
   : S E L E C T
   ;
SKIPKeyword
   : S K I P
   ;
SPECIALFUNLOADSTATEMENTS
   : S P E C I A L' 'F U N L O A D' 'S T A T E M E N T S
   ;
STEP
   : S T E P
   ;
STRING
   : S T R I N G
   ;
THEN
   : T H E N
   ;
TO
   : T O
   ;
WHEN
   : W H E N
   ;
XOR
   : '^='
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
PACKED
   : P A C K E D
   ;
PERCENT
   : '%'
   ;
POUND
   : '#'
   ;
UAI
   : U A I
   ;
WITH
   : W I T H
   ;
ZONED
   : Z O N E D
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
EOL
   : '\r\n'
   ;
COMMENT_SSSTAR
   : '//*' ~[\r\n]* -> channel(HIDDEN);
COMMENT_SSTAR
   : '/*' ~[\r\n]* -> channel(HIDDEN);
COMMENT_STAR
   : '*' ~[\r\n]* -> channel(HIDDEN);
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
