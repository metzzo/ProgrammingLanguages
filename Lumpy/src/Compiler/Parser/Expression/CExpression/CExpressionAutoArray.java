package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.CParser;
import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionAutoArray;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import java.util.LinkedList;

/**
 *
 * @author Coolo
 */
public class CExpressionAutoArray extends ExpressionAutoArray {
    /**
     * Konstruktor
     * @param p
     * @param exprs
     * @throws SyntaxException
     */
    public CExpressionAutoArray(Parser p, LinkedList<Expression> exprs) throws SyntaxException {
        super(p,exprs);
    }

    @Override
    public String generate() {
        String str = "";
        try {
            str += "genAutoArray_"+CExpressionAssignment.getRealDatatype(getDatatype()).replace("*", "_dim")+"("+arr.size()+", ";
        } catch (SyntaxException ex) {}
        for (Expression expr: arr) {
            str += expr.generate()+", ";
        }
        str += "NULL";
        str += ")";
        ((CParser)getParser()).addAutoArray(this);
        return str;
    }
}
