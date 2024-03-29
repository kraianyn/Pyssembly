import 'package:pyssembly/lexical_analysis/positioned_lexeme.dart';
import 'compilation_error.dart';


class SyntaxError extends CompilationError {
	// lexical analysis

	SyntaxError.invalidNum(String system) :
		super("invalid $system literal");

	SyntaxError.unterminatedStr() :
		super("unterminated string literal");

	SyntaxError.unknownLexeme() :
		super("unknown lexeme");

	// syntax analysis

	SyntaxError.operandExpected(int lineNum) :
		super("operand expected", lineNum);

	SyntaxError.unexpectedLexeme(PositionedLexeme lexeme) :
		super("unexpected lexeme '$lexeme'", lexeme.lineNum);
	
	SyntaxError.invalidAssignmentTarget(int lineNum) :
		super("invalid assignment target", lineNum);
	
	SyntaxError.exprExpected(int lineNum) :
		super("expression expected", lineNum);
	
	SyntaxError.colonExpected(int lineNum) :
		super("':' expected", lineNum);
	
	SyntaxError.invalidInlineBody(int lineNum) :
		super("invalid inline body", lineNum);

	SyntaxError.statementExpected(int lineNum) :
		super("statement expected", lineNum);
	
	SyntaxError.unexpectedElse(int lineNum) :
		super("unexpected else block", lineNum);

	// code generation

	SyntaxError.noLoop(PositionedLexeme statement) :
		super("no loop to $statement", statement.lineNum);
}
