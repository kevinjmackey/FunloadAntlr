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
    | out_to_statement LINE_NUMBER?
    | unload_all_information_statement
    | put_statement
    | output_statement
    | select_statement
    | if_statement
    | skip_statement
    | special_funload_statements
    | for_statement
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
    : OPEN FILE? identifier open_file_list?
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
    : FOREACHRECORD LINE_NUMBER? statement+ ENDFOR
    ;
if_statement
    : IF (complex_conditional_expression) THEN? statement+ else_clause? 
        elseif_clause? endif_clause
    ;
else_clause
    : ELSE statement+
    ;
elseif_clause
    : ELSEIF complex_conditional_expression THEN? statement+ else_clause?
    ;
endif_clause
    : ENDIF LINE_NUMBER?
    ;
for_statement
    : FOR index=identifier FROM integer_value TO column_name statement+ ENDFOR
    | FOR index=identifier FROM integer_value TO integer_value statement+ ENDFOR
    ;
put_statement
    : to_output_clause? PUT (column_name | variable | identifier | constant | recin) put_clauses
    ;
put_clauses
    : put_clause+ LINE_NUMBER?
    | put_clause+ continuation put_clauses
    ;
put_clause
    : position_clause
    | format_spec
    | missing_default_clause
    | error_clause
    ;
position_clause
    : AT location=integer_value
    ;
format_spec
    : AS datatype=(STRING | PACKED | ZONED) args
    ;
missing_default_clause
    : MISSING missing_value=constant
    ;
error_clause
    : ERRORTRUNCNOREPORT
    ;
column_name
    : identifier occurs?
    ;
occurs
    : LPAREN integer_value RPAREN
    | LPAREN identifier RPAREN
    | LPAREN POUND RPAREN
    ;
output_statement
    : to_output_clause? OUTPUT LINE_NUMBER?
    ;
select_statement
    : select_clause when_clause+ otherwise_clause? end_select_clause
    ;
select_clause
    : SELECT column=IDENTIFIER LINE_NUMBER?
    ;
when_clause
    : WHEN constant LINE_NUMBER? statement+
    ;
otherwise_clause
    : OTHERWISE LINE_NUMBER? statement+
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
unload_all_information_statement
    : UAI LINE_NUMBER?
    ;
special_funload_statements
    : SPECIALFUNLOADSTATEMENTS
    ;
out_to_statement
    : OUT TO identifier DEFAULT?
    ;
to_output_clause
    : TO identifier
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
    | variable EQUALS constant
    | variable EQUALS function
    | variable EQUALS expression
    ;
variable
    : PERCENT IDENTIFIER
    ;
recin
    : RECIN
    ;
expression
    : lhs=variable operator=MINUS rhs=INTEGER
    | lhs=variable operator=PLUS rhs=INTEGER
    ;
function
    : POUND IDENTIFIER args
    ;
complex_conditional_expression
    : conditional_expression (conjunction conditional_expression)* LINE_NUMBER?
    | conditional_expression (conjunction conditional_expression)* conjunction continuation 
      complex_conditional_expression
    | conditional_expression (conjunction conditional_expression)* continuation conjunction
      complex_conditional_expression
    ;
conditional_expression
    : LPAREN? lhs=column_name operator=conditional_operator rhsc=constant RPAREN?
    | LPAREN? lhs=column_name operator=conditional_operator rhsv=variable RPAREN?
    | LPAREN? lhs=column_name operator=conditional_operator RPAREN?
    ;
conditional_operator
    : EQUALS
    | GE
    | GT
    | LE
    | LT
    | NE
    | EXISTS
    | MISSING
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
    : EMPTY_STRING
    | STRING_LITERAL // string, datetime or uniqueidentifier
    | integer_value
    ;
identifier
    : IDENTIFIER
    ;
signed_int
    : (PLUS | MINUS) INTEGER
    ;
