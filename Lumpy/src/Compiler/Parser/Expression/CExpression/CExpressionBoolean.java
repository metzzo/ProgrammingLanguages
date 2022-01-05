package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.*;
import Compiler.Parser.Parser;

/**
 * Eine Zahl in C
 * @author Coolo
 */
public class CExpressionBoolean extends ExpressionBoolean {
    public CExpressionBoolean(Parser p, boolean number) {
        super(p, number);
    }

    @Override
    public String generate() {
        return "((byte)"+getNumber()+")";
    }
}
