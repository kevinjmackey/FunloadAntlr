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
DECIMAL
   : D E C I M A L
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
   : E N D WHITESPACE F O R
   ;
ENDIF
   : E N D WHITESPACE I F
   ;
ENDREPEAT
   : E N D WHITESPACE R E P E A T
   ;
ENDSELECT
   : E N D WHITESPACE S E L E C T
   ;
ERRORTRUNCNOREPORT
   : E R R O R' 'T R U N C' 'N O R E P O R T
   ;
END
   : E N D
   ;
ERRORTRUNC
   : E R R O R WHITESPACE T R U N C
   ;
NOREPORT
   : N O R E P O R T
   ;
ERROR
   : E R R O R
   ;
TRUNCNOREPORT
   : T R U N C'  'N O R E P O R T
   | T R U N C' 'N O R E P O R T
   ;
EXISTS
   : E X I S T S
   ;
EQUALS
   : '='
   | E Q
   | E Q U A L S
   ;
FIELDS
   : F I E L D S
   ;
FILE
   : F I L E
   ;
FILENAME
   : '#'F I L E N A M E
   ;
FIXED
   : F I X E D
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
   | G E
   ;
GT
   : '>'
   | G T
   ;
IF
   : I F
   ;
LE
   : '<='
   | L E
   ;
LT
   : '<'
   | L T
   ;
NE
   : N E
   | '^='
   ;
ISFIXED
   : I S' 'F I X E D
   ;
ISFLOAT
   : I S' 'F L O A T
   ;
JOB
   : J O B
   ;
LEAVEFOR
   : L E A V E WHITESPACE F O R
   ;
LEAVEREPEAT
   : L E A V E WHITESPACE R E P E A T
   ;
LENGTH
   : L E N G T H
   ;
LOGOUT
   : L O G O U T
   ;
MISSING
   : M I S S I N G
   ;
NONE
   : N O N E
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
RECORD
   : R E C O R D
   ;
REPORT
   : R E P O R T
   ;
REPEAT
   : R E P E A T
   ;
SELECT
   : S E L E C T
   ;
SKIPKeyword
   : S K I P
   ;
SORT
   : S O R T
   ;
SORT_TYPE
   : F
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
SUM
   : S U M
   ;
THEN
   : T H E N
   ;
TO
   : T O
   ;
TYPEEQUALS
   : T Y P E'='
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
PACKED
   : P A C K E D
   ;
PERCENT
   : '%'
   ;
POUND
   : '#'
   ;
PAI
   : P A I
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
EMPTY_STRING_LITERAL
   : '\'''\'''\'''\''
   ;
STRING_LITERAL
   : '\'' (~['\r\n] | '\'\'' | ESCAPE_SEQUENCE)* '\''
   ;
LINE_NUMBER: 
   '0' DEC_DIGIT DEC_DIGIT DEC_DIGIT DEC_DIGIT DEC_DIGIT DEC_DIGIT DEC_DIGIT
   ;
INTEGER
   : DEC_DIGIT+
   ;
FLOAT:
   DEC_DIGIT+ '.' DEC_DIGIT+
   ;
IDENTIFIER
   : ('A' .. 'Z' ) ('A' .. 'Z' | '0' .. '9' | '.' | '_')*
   ;
ALPHA_CHARACTER
   : UPPERCASE
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
   : '**' ~[\r\n]* -> channel(HIDDEN);
COMMENT_STARPOUND
   : '*#' ~[\r\n]* -> channel(HIDDEN);
COMMENT_STARWHITESPACE
   : '*' ' ' ~[\r\n]* -> channel(HIDDEN);
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
