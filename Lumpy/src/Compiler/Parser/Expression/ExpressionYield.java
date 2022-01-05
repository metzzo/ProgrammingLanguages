package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * EIn "Yield" in einem Generator
 * @author Coolo
 */
public abstract class ExpressionYield extends Expression {
    protected boolean isBreak = false;
    protected Expression expr = null;
    public ExpressionYield(Parser p, Expression expr) {
        super(p,new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.expr = expr;
    }

    public ExpressionYield(Parser p) {
        super(p,new Datatype(Datatype.VOID_DATATYPE,0,null));
        isBreak = true;
    }
}
