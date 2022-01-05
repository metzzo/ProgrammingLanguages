package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import Compiler.Class;

/**
 * Eine EachIn Schleife
 * @author Coolo
 */
public abstract class ExpressionEachIn extends Expression {
    protected ExpressionIdentifier var,in;
    protected ExpressionBlock block;
    protected Expression init;
    protected Class c;
    /**
     * Konstruktor
     * @param p
     * @param block
     * @param var
     * @param in
     * @param init
     */
    public ExpressionEachIn(Parser p,Class c,ExpressionBlock block, ExpressionIdentifier var, ExpressionIdentifier in, Expression init) {
        super(p,new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.block = block;
        this.var = var;
        this.in = in;
        this.init = init;
        this.c = c;
    }
}
