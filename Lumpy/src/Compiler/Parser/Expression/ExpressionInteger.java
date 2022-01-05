package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Eine 4 Byte Ganzzahl
 * @author Coolo
 */
public abstract class ExpressionInteger extends ExpressionIdentifier {
    private int number;
    
    
    /**
     * Konstruktor
     * @param p
     * @param num
     */
    public ExpressionInteger(Parser p, int num) {
        super(p,new Datatype(Datatype.INT_DATATYPE,0,null));
        
        this.number = num;
    }


    /**
     * Die Nummer/der Wert der gehalten wird
     * @return
     */
    public int getNumber() {
        return number;
    }
}
