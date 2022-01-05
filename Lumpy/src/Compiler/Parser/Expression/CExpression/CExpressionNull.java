package Compiler.Parser.Expression.CExpression;

import Compiler.Datatype;
import Compiler.Parser.Expression.ExpressionNull;
import Compiler.Parser.Parser;

/**
 * Ein Null Wert
 * @author Coolo
 */
public class CExpressionNull extends ExpressionNull {
    /**
     * Konstruktor
     * @param p
     */
    public CExpressionNull(Parser p) {
        super(p);
    }

    @Override
    public String generate() {
        return "NULL";
    }
}
