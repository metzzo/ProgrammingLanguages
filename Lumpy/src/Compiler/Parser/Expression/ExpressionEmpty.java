package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Leere Expression, ohne INhalt
 * @author Coolo
 */
public class ExpressionEmpty extends Expression {
    /**
     * Konstruktor
     */
    public ExpressionEmpty(Parser p) {
        super(p, new Datatype(Datatype.VOID_DATATYPE,0,null));
    }
    /**
     * generiert
     * @return
     */
    @Override
    public String generate() {
        return "";
    }
}
