package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Eine while schleife
 * @author Coolo
 */
public abstract class ExpressionWhile extends Expression {
    protected Expression condition;
    protected ExpressionBlock block;
    /**
     * Konsttukrtor
     * @param p
     * @param condition
     * @param block
     */
    public ExpressionWhile(Parser p,Expression condition,ExpressionBlock block) {
        super(p,new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.condition = condition;
        this.block = block;
    }
}
