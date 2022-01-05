package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.ExpressionInteger;
import Compiler.Parser.Parser;

/**
 * Eine Zahl in C
 * @author Coolo
 */
public class CExpressionInteger extends ExpressionInteger {
    public CExpressionInteger(Parser p, int number) {
        super(p, number);
    }

    @Override
    public String generate() {
        return "((int)"+getNumber()+")";
    }
}
