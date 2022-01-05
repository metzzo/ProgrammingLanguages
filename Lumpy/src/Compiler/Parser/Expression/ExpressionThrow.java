package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Wirft eine Exception
 * @author Coolo
 */
public abstract class ExpressionThrow extends Expression {
    protected Expression expr;
    public ExpressionThrow(Parser p, Expression expr) {
        super(p,new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.expr = expr;
    }
}
