package Compiler.Parser.Expression;

import Compiler.Parser.Parser;
import Compiler.SyntaxException;

/**
 * ein "-" vor einem wert.
 * @author Coolo
 */
public abstract class ExpressionNegative extends Expression {
    protected Expression expr;
    public ExpressionNegative(Parser p, Expression expr) throws SyntaxException{
        super(p,expr.getDatatype());
        this.expr = expr;
    }
}
