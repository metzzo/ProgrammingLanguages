package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionNegative;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;

/**
 * EIn "-" in C
 * @author Coolo
 */
public class CExpressionNegative extends ExpressionNegative {
    public CExpressionNegative(Parser p, Expression expr) throws SyntaxException {
        super(p,expr);
    }

    @Override
    public String generate() {
        return "(("+expr.generate()+")*-1)";
    }
}
