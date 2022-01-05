package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Ein exit/continue
 * @author Coolo
 */
public abstract class ExpressionLoopEvent extends Expression {
    protected boolean isContinue;

    /**
     * Ein Konstruktor
     * @param p
     * @param isContinue
     */
    public ExpressionLoopEvent(Parser p,boolean isContinue) {
        super(p,new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.isContinue = isContinue;
    }
}
