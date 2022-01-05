package Compiler.Parser.Expression.CExpression;

import Compiler.Datatype;
import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionCast;
import Compiler.Parser.Parser;

/**
 * Erstellt einen Cast in C
 * @author Coolo
 */
public class CExpressionCast extends ExpressionCast {
    /**
     * Konstrktor
     * @param p
     * @param from
     * @param to
     */
    public CExpressionCast(Parser p,Expression expr, Datatype from, Datatype to) {
        super(p,expr, from,to);
    }

    /**
     * generiert den C code
     */
    public String generate() {
        String str = "";
        if (getDatatypeTo().getName().equals("string")) {
            str = getDatatypeFrom().getName()+"2"+getDatatypeTo().getName()+"("+getExpression().generate()+")";
        } else if(getDatatypeFrom().getName().equals("string") && !getDatatypeTo().isClass()) {
            str = getDatatypeFrom().getName()+"2"+getDatatypeTo().getName()+"("+getExpression().generate()+")";
        } else if (getDatatypeTo().isClass()) {
            return getExpression().generate();
        } else {
            str = "(("+getDatatypeTo().getName()+")"+getExpression().generate()+")";
        }
        return str;
    }
}
