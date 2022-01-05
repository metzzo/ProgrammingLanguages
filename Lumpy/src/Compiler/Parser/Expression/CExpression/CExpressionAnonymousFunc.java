package Compiler.Parser.Expression.CExpression;

import Compiler.CodeFunction;
import Compiler.Parser.Expression.ExpressionAnonymousFunc;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;

/**
 *
 * @author Coolo
 */
public class CExpressionAnonymousFunc extends ExpressionAnonymousFunc {
    public CExpressionAnonymousFunc(Parser p, CodeFunction data) {
        super(p,data);
    }

    /**
     * Generiert alles
     */
    @Override
    public String generate() {
        try {
            return "("+getDatatype().toString()+")"+func.getSynonym();
        } catch (SyntaxException ex) {}
        return "ERROR";
    }
}
