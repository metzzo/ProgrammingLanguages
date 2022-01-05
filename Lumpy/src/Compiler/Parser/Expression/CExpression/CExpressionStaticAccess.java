package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.ExpressionStaticAccess;
import Compiler.Parser.Parser;
import Compiler.Class;

/**
 * statischer variablenzugriff, C
 * @author Coolo
 */
public class CExpressionStaticAccess extends ExpressionStaticAccess {
    public CExpressionStaticAccess(Parser p, Class c) {
        super(p,c);
    }

    @Override
    public String generate() {
        return "__static__"+c.toString();
    }
}
