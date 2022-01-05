package Compiler.Parser.Expression.CExpression;

import Compiler.Class;
import Compiler.Parser.Expression.ExpressionSuper;
import Compiler.Parser.Parser;

/**
 * Der "Super" Zugriffsidentifier (
 * @author Coolo
 */
public class CExpressionSuper extends ExpressionSuper {
    public CExpressionSuper(Parser p, Class c) {
        super(p, c);
    }

    @Override
    public String generate() {
        String str = "";
        return str;
    }
}
