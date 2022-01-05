package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.ExpressionIdentifier;
import Compiler.Parser.Expression.ExpressionIncDec;
import Compiler.Parser.Parser;

/**
 * In C ein "increment" oder "decrement"
 * @author Coolo
 */
public class CExpressionIncDec extends ExpressionIncDec {
    public CExpressionIncDec(Parser p, ExpressionIdentifier var,boolean inc) {
        super(p,var,inc);
    }

    @Override
    public String generate() {
        String add = "";
        if (inc)
            add = "++";
        else
            add = "--";
        return vari.generate()+add;
    }
}
