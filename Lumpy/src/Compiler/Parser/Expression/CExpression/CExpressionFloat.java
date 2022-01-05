package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.*;
import Compiler.Parser.Parser;

/**
 * Eine Zahl in C
 * @author Coolo
 */
public class CExpressionFloat extends ExpressionFloat {
    public CExpressionFloat(Parser p, float number) {
        super(p, number);
    }

    @Override
    public String generate() {
        return "((float)"+getNumber()+")";
    }
}
