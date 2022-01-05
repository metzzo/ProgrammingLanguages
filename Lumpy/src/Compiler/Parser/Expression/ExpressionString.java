package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Eine 4 Byte Ganzzahl
 * @author Coolo
 */
public abstract class ExpressionString extends ExpressionIdentifier {
    private String number;

    /**
     * Konstruktor
     * @param p
     * @param num
     */
    public ExpressionString(Parser p, String num) {
        super(p,new Datatype(Datatype.STRING_DATATYPE,0,null));

        this.number = num;
    }



    /**
     * Die Nummer/der Wert der gehalten wird
     * @return
     */
    public String getNumber() {
        return number;
    }
}
