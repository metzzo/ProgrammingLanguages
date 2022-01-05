package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Ist ein Increment, Decrement Ausdruck
 * @author Coolo
 */
public abstract class ExpressionIncDec extends Expression {
    protected ExpressionIdentifier vari;
    protected boolean inc;
    public ExpressionIncDec(Parser p, ExpressionIdentifier vari,boolean inc) {
        super(p,new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.inc = inc;
        this.vari = vari;
    }
}
