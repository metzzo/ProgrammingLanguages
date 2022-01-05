package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Ein "simples" for, weniger kontrolle als beim normalen
 * @author Coolo
 */
public abstract class ExpressionSimpleFor extends Expression {
    protected Expression init;
    protected Expression cond, increment;
    protected ExpressionIdentifier var;
    protected ExpressionBlock block;

    /**
     * Konstuktor
     * @param p
     * @param init
     * @param cond
     * @param increment
     */
    public ExpressionSimpleFor(Parser p,ExpressionIdentifier var, Expression init, Expression cond, Expression increment,ExpressionBlock block) {
        super(p, new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.init = init;
        this.cond = cond;
        this.increment = increment;
        this.block = block;
        this.var = var;
    }
}
