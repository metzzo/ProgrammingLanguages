package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.ExpressionVariable;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import Compiler.Variable;

/**
 * C Variablen zugriff
 * @author Coolo
 */
public class CExpressionVariable extends ExpressionVariable {
    public CExpressionVariable(Parser p, Variable var) throws SyntaxException {
        super(p,var);
    }

    @Override
    public String generate() {
        return CExpressionAssignment.getAccess(var);
    }
}
