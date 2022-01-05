package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.*;
import Compiler.Parser.Parser;

/**
 * Eine Zahl in C
 * @author Coolo
 */
public class CExpressionString extends ExpressionString {
    public CExpressionString(Parser p, String number) {
        super(p, number);
    }

    @Override
    public String generate() {
        return "newString("+getNumber()+")";
    }
}
