// Generated from ..\FunloadParser.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link FunloadParser}.
 */
public interface FunloadParserListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link FunloadParser#funload_file}.
	 * @param ctx the parse tree
	 */
	void enterFunload_file(FunloadParser.Funload_fileContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#funload_file}.
	 * @param ctx the parse tree
	 */
	void exitFunload_file(FunloadParser.Funload_fileContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#job_blocks}.
	 * @param ctx the parse tree
	 */
	void enterJob_blocks(FunloadParser.Job_blocksContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#job_blocks}.
	 * @param ctx the parse tree
	 */
	void exitJob_blocks(FunloadParser.Job_blocksContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#job_block}.
	 * @param ctx the parse tree
	 */
	void enterJob_block(FunloadParser.Job_blockContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#job_block}.
	 * @param ctx the parse tree
	 */
	void exitJob_block(FunloadParser.Job_blockContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatement(FunloadParser.StatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatement(FunloadParser.StatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#job_statement}.
	 * @param ctx the parse tree
	 */
	void enterJob_statement(FunloadParser.Job_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#job_statement}.
	 * @param ctx the parse tree
	 */
	void exitJob_statement(FunloadParser.Job_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#jcl_statement}.
	 * @param ctx the parse tree
	 */
	void enterJcl_statement(FunloadParser.Jcl_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#jcl_statement}.
	 * @param ctx the parse tree
	 */
	void exitJcl_statement(FunloadParser.Jcl_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#open_statement}.
	 * @param ctx the parse tree
	 */
	void enterOpen_statement(FunloadParser.Open_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#open_statement}.
	 * @param ctx the parse tree
	 */
	void exitOpen_statement(FunloadParser.Open_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#open_file_list}.
	 * @param ctx the parse tree
	 */
	void enterOpen_file_list(FunloadParser.Open_file_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#open_file_list}.
	 * @param ctx the parse tree
	 */
	void exitOpen_file_list(FunloadParser.Open_file_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#report_statement}.
	 * @param ctx the parse tree
	 */
	void enterReport_statement(FunloadParser.Report_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#report_statement}.
	 * @param ctx the parse tree
	 */
	void exitReport_statement(FunloadParser.Report_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#funload_statement}.
	 * @param ctx the parse tree
	 */
	void enterFunload_statement(FunloadParser.Funload_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#funload_statement}.
	 * @param ctx the parse tree
	 */
	void exitFunload_statement(FunloadParser.Funload_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#foreach_statement}.
	 * @param ctx the parse tree
	 */
	void enterForeach_statement(FunloadParser.Foreach_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#foreach_statement}.
	 * @param ctx the parse tree
	 */
	void exitForeach_statement(FunloadParser.Foreach_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#if_statement}.
	 * @param ctx the parse tree
	 */
	void enterIf_statement(FunloadParser.If_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#if_statement}.
	 * @param ctx the parse tree
	 */
	void exitIf_statement(FunloadParser.If_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#else_clause}.
	 * @param ctx the parse tree
	 */
	void enterElse_clause(FunloadParser.Else_clauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#else_clause}.
	 * @param ctx the parse tree
	 */
	void exitElse_clause(FunloadParser.Else_clauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#elseif_clause}.
	 * @param ctx the parse tree
	 */
	void enterElseif_clause(FunloadParser.Elseif_clauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#elseif_clause}.
	 * @param ctx the parse tree
	 */
	void exitElseif_clause(FunloadParser.Elseif_clauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#endif_clause}.
	 * @param ctx the parse tree
	 */
	void enterEndif_clause(FunloadParser.Endif_clauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#endif_clause}.
	 * @param ctx the parse tree
	 */
	void exitEndif_clause(FunloadParser.Endif_clauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#for_statement}.
	 * @param ctx the parse tree
	 */
	void enterFor_statement(FunloadParser.For_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#for_statement}.
	 * @param ctx the parse tree
	 */
	void exitFor_statement(FunloadParser.For_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#put_statement}.
	 * @param ctx the parse tree
	 */
	void enterPut_statement(FunloadParser.Put_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#put_statement}.
	 * @param ctx the parse tree
	 */
	void exitPut_statement(FunloadParser.Put_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#put_clauses}.
	 * @param ctx the parse tree
	 */
	void enterPut_clauses(FunloadParser.Put_clausesContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#put_clauses}.
	 * @param ctx the parse tree
	 */
	void exitPut_clauses(FunloadParser.Put_clausesContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#put_clause}.
	 * @param ctx the parse tree
	 */
	void enterPut_clause(FunloadParser.Put_clauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#put_clause}.
	 * @param ctx the parse tree
	 */
	void exitPut_clause(FunloadParser.Put_clauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#position_clause}.
	 * @param ctx the parse tree
	 */
	void enterPosition_clause(FunloadParser.Position_clauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#position_clause}.
	 * @param ctx the parse tree
	 */
	void exitPosition_clause(FunloadParser.Position_clauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#format_spec}.
	 * @param ctx the parse tree
	 */
	void enterFormat_spec(FunloadParser.Format_specContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#format_spec}.
	 * @param ctx the parse tree
	 */
	void exitFormat_spec(FunloadParser.Format_specContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#missing_default_clause}.
	 * @param ctx the parse tree
	 */
	void enterMissing_default_clause(FunloadParser.Missing_default_clauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#missing_default_clause}.
	 * @param ctx the parse tree
	 */
	void exitMissing_default_clause(FunloadParser.Missing_default_clauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#error_clause}.
	 * @param ctx the parse tree
	 */
	void enterError_clause(FunloadParser.Error_clauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#error_clause}.
	 * @param ctx the parse tree
	 */
	void exitError_clause(FunloadParser.Error_clauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#sort_statement}.
	 * @param ctx the parse tree
	 */
	void enterSort_statement(FunloadParser.Sort_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#sort_statement}.
	 * @param ctx the parse tree
	 */
	void exitSort_statement(FunloadParser.Sort_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#column_name}.
	 * @param ctx the parse tree
	 */
	void enterColumn_name(FunloadParser.Column_nameContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#column_name}.
	 * @param ctx the parse tree
	 */
	void exitColumn_name(FunloadParser.Column_nameContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#occurs}.
	 * @param ctx the parse tree
	 */
	void enterOccurs(FunloadParser.OccursContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#occurs}.
	 * @param ctx the parse tree
	 */
	void exitOccurs(FunloadParser.OccursContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#output_statement}.
	 * @param ctx the parse tree
	 */
	void enterOutput_statement(FunloadParser.Output_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#output_statement}.
	 * @param ctx the parse tree
	 */
	void exitOutput_statement(FunloadParser.Output_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#ready_statement}.
	 * @param ctx the parse tree
	 */
	void enterReady_statement(FunloadParser.Ready_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#ready_statement}.
	 * @param ctx the parse tree
	 */
	void exitReady_statement(FunloadParser.Ready_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#end_statement}.
	 * @param ctx the parse tree
	 */
	void enterEnd_statement(FunloadParser.End_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#end_statement}.
	 * @param ctx the parse tree
	 */
	void exitEnd_statement(FunloadParser.End_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#select_statement}.
	 * @param ctx the parse tree
	 */
	void enterSelect_statement(FunloadParser.Select_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#select_statement}.
	 * @param ctx the parse tree
	 */
	void exitSelect_statement(FunloadParser.Select_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#select_clause}.
	 * @param ctx the parse tree
	 */
	void enterSelect_clause(FunloadParser.Select_clauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#select_clause}.
	 * @param ctx the parse tree
	 */
	void exitSelect_clause(FunloadParser.Select_clauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#when_clause}.
	 * @param ctx the parse tree
	 */
	void enterWhen_clause(FunloadParser.When_clauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#when_clause}.
	 * @param ctx the parse tree
	 */
	void exitWhen_clause(FunloadParser.When_clauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#otherwise_clause}.
	 * @param ctx the parse tree
	 */
	void enterOtherwise_clause(FunloadParser.Otherwise_clauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#otherwise_clause}.
	 * @param ctx the parse tree
	 */
	void exitOtherwise_clause(FunloadParser.Otherwise_clauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#end_select_clause}.
	 * @param ctx the parse tree
	 */
	void enterEnd_select_clause(FunloadParser.End_select_clauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#end_select_clause}.
	 * @param ctx the parse tree
	 */
	void exitEnd_select_clause(FunloadParser.End_select_clauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#skip_statement}.
	 * @param ctx the parse tree
	 */
	void enterSkip_statement(FunloadParser.Skip_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#skip_statement}.
	 * @param ctx the parse tree
	 */
	void exitSkip_statement(FunloadParser.Skip_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#logout_statement}.
	 * @param ctx the parse tree
	 */
	void enterLogout_statement(FunloadParser.Logout_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#logout_statement}.
	 * @param ctx the parse tree
	 */
	void exitLogout_statement(FunloadParser.Logout_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#print_all_information_statement}.
	 * @param ctx the parse tree
	 */
	void enterPrint_all_information_statement(FunloadParser.Print_all_information_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#print_all_information_statement}.
	 * @param ctx the parse tree
	 */
	void exitPrint_all_information_statement(FunloadParser.Print_all_information_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#unload_all_information_statement}.
	 * @param ctx the parse tree
	 */
	void enterUnload_all_information_statement(FunloadParser.Unload_all_information_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#unload_all_information_statement}.
	 * @param ctx the parse tree
	 */
	void exitUnload_all_information_statement(FunloadParser.Unload_all_information_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#special_funload_statements}.
	 * @param ctx the parse tree
	 */
	void enterSpecial_funload_statements(FunloadParser.Special_funload_statementsContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#special_funload_statements}.
	 * @param ctx the parse tree
	 */
	void exitSpecial_funload_statements(FunloadParser.Special_funload_statementsContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#out_to_statement}.
	 * @param ctx the parse tree
	 */
	void enterOut_to_statement(FunloadParser.Out_to_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#out_to_statement}.
	 * @param ctx the parse tree
	 */
	void exitOut_to_statement(FunloadParser.Out_to_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#to_output_clause}.
	 * @param ctx the parse tree
	 */
	void enterTo_output_clause(FunloadParser.To_output_clauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#to_output_clause}.
	 * @param ctx the parse tree
	 */
	void exitTo_output_clause(FunloadParser.To_output_clauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#argument}.
	 * @param ctx the parse tree
	 */
	void enterArgument(FunloadParser.ArgumentContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#argument}.
	 * @param ctx the parse tree
	 */
	void exitArgument(FunloadParser.ArgumentContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#args}.
	 * @param ctx the parse tree
	 */
	void enterArgs(FunloadParser.ArgsContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#args}.
	 * @param ctx the parse tree
	 */
	void exitArgs(FunloadParser.ArgsContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#argument_list}.
	 * @param ctx the parse tree
	 */
	void enterArgument_list(FunloadParser.Argument_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#argument_list}.
	 * @param ctx the parse tree
	 */
	void exitArgument_list(FunloadParser.Argument_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#params}.
	 * @param ctx the parse tree
	 */
	void enterParams(FunloadParser.ParamsContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#params}.
	 * @param ctx the parse tree
	 */
	void exitParams(FunloadParser.ParamsContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#param}.
	 * @param ctx the parse tree
	 */
	void enterParam(FunloadParser.ParamContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#param}.
	 * @param ctx the parse tree
	 */
	void exitParam(FunloadParser.ParamContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#dsn_expression}.
	 * @param ctx the parse tree
	 */
	void enterDsn_expression(FunloadParser.Dsn_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#dsn_expression}.
	 * @param ctx the parse tree
	 */
	void exitDsn_expression(FunloadParser.Dsn_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#jcl_expression}.
	 * @param ctx the parse tree
	 */
	void enterJcl_expression(FunloadParser.Jcl_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#jcl_expression}.
	 * @param ctx the parse tree
	 */
	void exitJcl_expression(FunloadParser.Jcl_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#assignment_statement}.
	 * @param ctx the parse tree
	 */
	void enterAssignment_statement(FunloadParser.Assignment_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#assignment_statement}.
	 * @param ctx the parse tree
	 */
	void exitAssignment_statement(FunloadParser.Assignment_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#variable}.
	 * @param ctx the parse tree
	 */
	void enterVariable(FunloadParser.VariableContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#variable}.
	 * @param ctx the parse tree
	 */
	void exitVariable(FunloadParser.VariableContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#filename}.
	 * @param ctx the parse tree
	 */
	void enterFilename(FunloadParser.FilenameContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#filename}.
	 * @param ctx the parse tree
	 */
	void exitFilename(FunloadParser.FilenameContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#recin}.
	 * @param ctx the parse tree
	 */
	void enterRecin(FunloadParser.RecinContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#recin}.
	 * @param ctx the parse tree
	 */
	void exitRecin(FunloadParser.RecinContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpression(FunloadParser.ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpression(FunloadParser.ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#function}.
	 * @param ctx the parse tree
	 */
	void enterFunction(FunloadParser.FunctionContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#function}.
	 * @param ctx the parse tree
	 */
	void exitFunction(FunloadParser.FunctionContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#complex_conditional_expression}.
	 * @param ctx the parse tree
	 */
	void enterComplex_conditional_expression(FunloadParser.Complex_conditional_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#complex_conditional_expression}.
	 * @param ctx the parse tree
	 */
	void exitComplex_conditional_expression(FunloadParser.Complex_conditional_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#conditional_expression}.
	 * @param ctx the parse tree
	 */
	void enterConditional_expression(FunloadParser.Conditional_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#conditional_expression}.
	 * @param ctx the parse tree
	 */
	void exitConditional_expression(FunloadParser.Conditional_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#conditional_operator}.
	 * @param ctx the parse tree
	 */
	void enterConditional_operator(FunloadParser.Conditional_operatorContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#conditional_operator}.
	 * @param ctx the parse tree
	 */
	void exitConditional_operator(FunloadParser.Conditional_operatorContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#continuation}.
	 * @param ctx the parse tree
	 */
	void enterContinuation(FunloadParser.ContinuationContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#continuation}.
	 * @param ctx the parse tree
	 */
	void exitContinuation(FunloadParser.ContinuationContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#conjunction}.
	 * @param ctx the parse tree
	 */
	void enterConjunction(FunloadParser.ConjunctionContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#conjunction}.
	 * @param ctx the parse tree
	 */
	void exitConjunction(FunloadParser.ConjunctionContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#integer_value}.
	 * @param ctx the parse tree
	 */
	void enterInteger_value(FunloadParser.Integer_valueContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#integer_value}.
	 * @param ctx the parse tree
	 */
	void exitInteger_value(FunloadParser.Integer_valueContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterConstant(FunloadParser.ConstantContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitConstant(FunloadParser.ConstantContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#identifier}.
	 * @param ctx the parse tree
	 */
	void enterIdentifier(FunloadParser.IdentifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#identifier}.
	 * @param ctx the parse tree
	 */
	void exitIdentifier(FunloadParser.IdentifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link FunloadParser#signed_int}.
	 * @param ctx the parse tree
	 */
	void enterSigned_int(FunloadParser.Signed_intContext ctx);
	/**
	 * Exit a parse tree produced by {@link FunloadParser#signed_int}.
	 * @param ctx the parse tree
	 */
	void exitSigned_int(FunloadParser.Signed_intContext ctx);
}