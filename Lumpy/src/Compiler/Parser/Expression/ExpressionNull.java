package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Die "Null" Konstante
 * @author Coolo
 */
public abstract class ExpressionNull extends Expression {
    public ExpressionNull(Parser p) {
        super(p,new Datatype(Datatype.NULL_DATATYPE,0,null));
    }
}
