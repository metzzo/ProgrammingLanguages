package Compiler.Parser.Expression.CExpression;

import Compiler.Datatype;
import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionReturn;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;

/**
 * Ein Return aus einer Funktion in C.
 * @author Coolo
 */
public class CExpressionReturn extends ExpressionReturn {
    public CExpressionReturn(Parser p, Expression expr) {
        super(p, expr);
    }

    @Override
    public String generate() {
        String str = "";
        try {
            if (CExpressionTry.currentExprTry != null) {
                str += "finally:"+getParser().newLine();
                str += CExpressionTry.currentExprTry.getFinallyBlock().generate();
            }
            if (CExpressionBlock.varCount != 0) str += "stack_leave();"+getParser().newLine();
            if (expr != null && !expr.getDatatype().isVoid())
                str += "return "+expr.generate();
            else
                str += "return";
            return str;
        } catch (SyntaxException ex) {}
        return "ERROR";
    }
}
