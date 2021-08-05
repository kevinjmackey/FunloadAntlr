parser grammar FunloadParser;

options { tokenVocab=FunloadLexer;}

funload_file
    : job_blocks EOF
    ;
job_blocks
    : job_block+
    ;
job_block
    : job_statement (statement LINE_NUMBER?)+
    ;
statement
    : jcl_statement LINE_NUMBER?
    | open_statement LINE_NUMBER?
    | assignment_statement LINE_NUMBER?
    | report_statement LINE_NUMBER?
    | funload_statement LINE_NUMBER?
    | logout_statement LINE_NUMBER?
    ;
job_statement
    : JOB EQUALS jobname=identifier STEP EQUALS stepname=identifier
    ;
jcl_statement
    : JCLCOMMAND params
    | IDENTIFIER IDENTIFIER+
    | IDENTIFIER jcl_expression
    ;
open_statement
    : OPEN identifier open_file_list?
    ;
open_file_list
    : (COMMA identifier)+
    | (COMMA identifier)+ COMMA continuation identifier open_file_list
    ;
report_statement
    : REPORT STRING_LITERAL WITH variable
    ;
funload_statement
    : foreach_statement
    ;
foreach_statement
    : FOREACHRECORD LINE_NUMBER? dml_statement+ ENDFOR
    ;
dml_statement
    : put_statement+
    | output_statement
    | select_statement
    | if_statement
    | skip_statement
    ;
if_statement
    : IF (complex_conditional_expression) THEN? dml_statement+ (ELSE dml_statement+)? 
        (ELSEIF complex_conditional_expression)? endif_clause
    ;
endif_clause
    : ENDIF LINE_NUMBER?
    ;
for_statement
    : FOR identifier FROM integer_value TO identifier LPAREN POUND RPAREN dml_statement+
    ;
put_statement
    : PUT (column_name | variable | identifier) format_spec? LINE_NUMBER?
    ;
format_spec
    : AT location=integer_value AS datatype=(STRING | PACKED | ZONED) LPAREN length=integer_value RPAREN
    ;
column_name
    : identifier occurs?
    ;
occurs
    : LPAREN integer_value RPAREN
    ;
output_statement
    : OUTPUT LINE_NUMBER?
    ;
select_statement
    : select_clause when_clause+ otherwise_clause? end_select_clause
    ;
select_clause
    : SELECT column=IDENTIFIER LINE_NUMBER?
    ;
when_clause
    : WHEN constant LINE_NUMBER? dml_statement+
    ;
otherwise_clause
    : OTHERWISE LINE_NUMBER? dml_statement+
    ;
end_select_clause
    : ENDSELECT LINE_NUMBER?
    ;
skip_statement
    : SKIPKeyword LINE_NUMBER?
    ;
logout_statement
    : LOGOUT
    ;
params
    : (param COMMA? LINE_NUMBER?)+
    ;
param
    : DOUBLE_SLASH? IDENTIFIER ASTERISK?
    | DOUBLE_SLASH? STRING_LITERAL
    | DOUBLE_SLASH? dsn_expression
    | DOUBLE_SLASH? jcl_expression
    | DOUBLE_SLASH? args
    ;
dsn_expression
    : DSN EQUALS output_file=IDENTIFIER
    ;
argument
    : integer_value
    | IDENTIFIER
    | STRING_LITERAL
    | jcl_expression
    | variable
    | args
    ;
args
    : LPAREN argument argument_list? RPAREN
    ;
argument_list
    : (COMMA argument)+
    | (COMMA argument)+ COMMA continuation argument argument_list
    ;

jcl_expression
    : IDENTIFIER EQUALS IDENTIFIER
    | IDENTIFIER EQUALS STRING_LITERAL
    | IDENTIFIER EQUALS integer_value
    | IDENTIFIER EQUALS ASTERISK
    | IDENTIFIER EQUALS args
    ;
assignment_statement
    : variable EQUALS identifier
    | variable EQUALS integer_value
    | variable EQUALS function
    ;
variable
    : PERCENT IDENTIFIER
    ;
function
    : POUND IDENTIFIER args
    ;
complex_conditional_expression
    : conditional_expression (conjunction conditional_expression)* LINE_NUMBER?
    | conditional_expression (conjunction conditional_expression)* conjunction continuation 
      complex_conditional_expression
    ;
conditional_expression
    : LPAREN? identifier conditional_operator constant RPAREN?
    | LPAREN? identifier conditional_operator variable RPAREN?
    | LPAREN? identifier conditional_operator RPAREN?
    ;
conditional_operator
    : EQUALS
    | GE
    | GT
    | LE
    | LT
    | EXISTS
    ;
continuation
    : MINUS LINE_NUMBER?
    ;
conjunction
    : (AND | OR)
    ;
integer_value
    : INTEGER
    | signed_int
    ;
constant
    : STRING_LITERAL // string, datetime or uniqueidentifier
    | integer_value
    ;
identifier
    : IDENTIFIER
    ;
signed_int
    : (PLUS | MINUS) INTEGER
    ;
