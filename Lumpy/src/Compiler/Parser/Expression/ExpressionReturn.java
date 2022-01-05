package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Ein Return aus einer Funktion.
 * @author Coolo
 */
public abstract class ExpressionReturn extends Expression {
    protected Expression expr;
    public ExpressionReturn(Parser p, Expression expr) {
        super(p, new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.expr = expr;
    }
    
}
