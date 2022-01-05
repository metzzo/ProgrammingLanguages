package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Eine 4 Byte  Kommazahl
 * @author Coolo
 */
public abstract class ExpressionFloat extends ExpressionIdentifier {
    private float number;

    /**
     * Konstruktor
     * @param p
     * @param num
     */
    public ExpressionFloat(Parser p, float num) {
        super(p,new Datatype(Datatype.FLOAT_DATATYPE,0,null));

        this.number = num;
    }


    /**
     * Die Nummer/der Wert der gehalten wird
     * @return
     */
    public double getNumber() {
        return number;
    }
}
