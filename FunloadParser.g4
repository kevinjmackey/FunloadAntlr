parser grammar FunloadParser;

options { tokenVocab=FunloadLexer;}

funload_file
    : statements EOF
    ;
statements
    : (statement LINE_NUMBER?)+
    ;
statement
    : jcl_statement
    | open_satatement
    | assignment_statement
    ;
jcl_statement
    : JCLCOMMAND params
    | IDENTIFIER IDENTIFIER+
    | IDENTIFIER expression
    ;
open_satatement
    : OPEN IDENTIFIER
    ;
params
    : (param COMMA? LINE_NUMBER?)+
    ;
param
    : DOUBLE_SLASH? IDENTIFIER ASTERISK?
    | DOUBLE_SLASH? STRING_LITERAL
    | DOUBLE_SLASH? dsn_expression
    | DOUBLE_SLASH? expression
    | DOUBLE_SLASH? args
    | DOUBLE_SLASH? ANY
    ;
dsn_expression
    : DSN EQUALS IDENTIFIER
    ;
argument
    : signed_int
    | IDENTIFIER
    | STRING_LITERAL
    | expression
    | variable
    | args
    ;
args
    : LPAREN (argument) (COMMA argument)* RPAREN
    ;
expression
    : IDENTIFIER EQUALS IDENTIFIER
    | IDENTIFIER EQUALS STRING_LITERAL
    | IDENTIFIER EQUALS signed_int
    | IDENTIFIER EQUALS ASTERISK
    | IDENTIFIER EQUALS args
    ;
assignment_statement
    : variable EQUALS IDENTIFIER
    | variable EQUALS signed_int
    | variable EQUALS function
    ;
variable
    : PERCENT IDENTIFIER
    ;
function
    : POUND IDENTIFIER args
    ;
signed_int
    : (PLUS | MINUS)? INTEGER
    ;
