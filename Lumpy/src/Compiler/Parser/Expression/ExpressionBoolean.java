package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Eine 1 Bit Ganzzahl
 * @author Coolo
 */
public abstract class ExpressionBoolean extends ExpressionIdentifier {
    private boolean number;
    /**
     * Konstruktor
     * @param p
     * @param num
     */
    public ExpressionBoolean(Parser p, boolean num) {
        super(p,new Datatype(Datatype.BOOLEAN_DATATYPE,0,null));

        this.number = num;
    }

    /**
     * Die Nummer/der Wert der gehalten wird
     * @return
     */
    public boolean getNumber() {
        return number;
    }
}
