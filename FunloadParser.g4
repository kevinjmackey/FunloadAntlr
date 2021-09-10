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
    : LINE_NUMBER
    | jcl_statement LINE_NUMBER?
    | open_statement LINE_NUMBER?
    | assignment_statement LINE_NUMBER?
    | report_statement LINE_NUMBER?
    | funload_statement LINE_NUMBER?
    | logout_statement LINE_NUMBER?
    | out_to_statement LINE_NUMBER?
    | print_all_information_statement
    | unload_all_information_statement
    | put_statement LINE_NUMBER?
    | output_statement LINE_NUMBER?
    | select_statement LINE_NUMBER?
    | if_statement LINE_NUMBER?
    | skip_statement LINE_NUMBER?
    | special_funload_statements
    | for_statement LINE_NUMBER?
    | sort_statement LINE_NUMBER?
    | ready_statement LINE_NUMBER?
    | end_statement LINE_NUMBER?
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
    | (COMMA identifier)+ COMMA continuation identifier open_file_list?
    ;
report_statement
    : REPORT STRING_LITERAL WITH variable (WITH STRING_LITERAL WITH variable)?
    | REPORT STRING_LITERAL AND variable (AND STRING_LITERAL AND variable)*
    | REPORT STRING_LITERAL
    ;
funload_statement
    : foreach_statement
    ;
foreach_statement
    : FOREACHRECORD LINE_NUMBER? statement+ ENDFOR
    ;
if_statement
    : IF (complex_conditional_expression) THEN? statement* else_clause? 
        elseif_clause* endif_clause
    ;
else_clause
    : ELSE statement*
    ;
elseif_clause
    : ELSEIF complex_conditional_expression THEN? statement+ else_clause? endif_clause?
    ;
endif_clause
    : ENDIF LINE_NUMBER?
    ;
for_statement
    : FOR index=identifier FROM integer_value TO column_name statement+ ENDFOR
    | FOR index=identifier FROM integer_value TO integer_value statement+ ENDFOR
    | FOR index=identifier FROM integer_value TO variable statement+ ENDFOR
    ;
put_statement
    : to_output_clause? PUT (column_name | variable | identifier | constant | filename | recin) continuation? put_clauses?
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
    : AS datatype=(STRING | PACKED | ZONED | FIXED | DECIMAL) continuation? args
    ;
missing_default_clause
    : MISSING missing_value=constant
    ;
error_clause
    : ERRORTRUNCNOREPORT
    | ERROR continuation TRUNCNOREPORT
    | ERRORTRUNC continuation NOREPORT
    ;
sort_statement
    : SORT FIELDS EQUALS args (COMMA EQUALS)?
    | SORT FIELDS EQUALS args SUM FIELDS EQUALS NONE
    | SORT RECORD TYPEEQUALS SORT_TYPE COMMA LENGTH EQUALS args
    ;
column_name
    : identifier WHITESPACE? occurs?
    ;
occurs
    : LPAREN integer_value RPAREN
    | LPAREN identifier RPAREN
    | LPAREN POUND RPAREN
    | LPAREN ASTERISK RPAREN
    ;
output_statement
    : to_output_clause? OUTPUT LINE_NUMBER?
    ;
ready_statement
    : READY
    ;
end_statement
    : END
    ;
select_statement
    : select_clause when_clause+ otherwise_clause? end_select_clause
    ;
select_clause
    : SELECT (column_name | variable) LINE_NUMBER?
    ;
when_clause
    : WHEN constant (COMMA constant)* LINE_NUMBER? statement+
    | WHEN constant (COMMA constant)* (COMMA continuation)? constant (COMMA constant)* statement+
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
print_all_information_statement
    : PAI LINE_NUMBER?
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
argument
    : integer_value
    | variable
    | column_name
    | IDENTIFIER
    | STRING_LITERAL
    | identifier STRING_LITERAL
    | filename
    | function
    | jcl_expression
    | args
    ;
args
    : LPAREN argument? argument_list? RPAREN
    ;
argument_list
    : (COMMA argument?)* COMMA continuation argument_list+
    | argument (COMMA argument_list)?
    | (COMMA argument?)+
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
jcl_expression
    : IDENTIFIER EQUALS IDENTIFIER
    | IDENTIFIER EQUALS STRING_LITERAL
    | IDENTIFIER EQUALS integer_value
    | IDENTIFIER EQUALS ASTERISK
    | IDENTIFIER EQUALS args
    ;
assignment_statement
    : variable EQUALS continuation? identifier
    | variable EQUALS continuation? constant
    | variable EQUALS continuation? function
    | variable EQUALS continuation? variable
    | variable EQUALS continuation? expression
    | variable EQUALS continuation? column_name
    ;
variable
    : PERCENT IDENTIFIER
    ;
filename
    : FILENAME
    ;
recin
    : RECIN
    ;
expression
    : variable (PLUS | MINUS) INTEGER ((PLUS | MINUS) INTEGER)?
    | variable (PLUS | MINUS) INTEGER ((PLUS | MINUS) variable)?
    | variable (PLUS | MINUS) variable ((PLUS | MINUS) INTEGER)?
    | INTEGER (PLUS | MINUS) variable ((PLUS | MINUS) INTEGER)?
    ;
function
    : POUND IDENTIFIER args?
    ;
complex_conditional_expression
    : conditional_expression (conjunction conditional_expression)* LINE_NUMBER?
    | conditional_expression (conjunction conditional_expression)* conjunction continuation 
      complex_conditional_expression
    | conditional_expression (conjunction conditional_expression)* continuation conjunction
      complex_conditional_expression
    ;
conditional_expression
    : LPAREN* lhsv=variable operator=conditional_operator rhsc=constant RPAREN*
    | LPAREN* lhsv=variable operator=conditional_operator rhsv=variable RPAREN*
    | LPAREN* lhs=column_name operator=conditional_operator rhscol=column_name RPAREN*
    | LPAREN* lhs=column_name operator=conditional_operator rhsc=constant RPAREN*
    | LPAREN* lhs=column_name operator=conditional_operator PLUS? rhsv=variable RPAREN*
    | LPAREN* lhs=column_name operator=conditional_operator RPAREN*
    | LPAREN* lhvs=variable operator=conditional_operator RPAREN*
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
    | ISFIXED
    | ISFLOAT
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
