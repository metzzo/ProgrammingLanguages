package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 *´Eine For Schleife
 * @author Coolo
 */
public abstract class ExpressionFor extends Expression {
    protected Expression init;
    protected Expression cond, increment;
    protected ExpressionBlock block;

    /**
     * Konstuktor
     * @param p
     * @param init
     * @param cond
     * @param increment
     */
    public ExpressionFor(Parser p, Expression init, Expression cond, Expression increment,ExpressionBlock block) {
        super(p, new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.init = init;
        this.cond = cond;
        this.increment = increment;
        this.block = block;
    }
}
