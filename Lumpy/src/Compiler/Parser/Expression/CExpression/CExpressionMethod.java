package Compiler.Parser.Expression.CExpression;

import Compiler.*;
import Compiler.Class;
import Compiler.Parser.Expression.ExpressionIdentifier;
import Compiler.Parser.Expression.ExpressionMethod;
import Compiler.Parser.Parser;

/**
 * Ein C Methodenaufruf
 * @author Coolo
 */
public class CExpressionMethod extends ExpressionMethod {
    public CExpressionMethod(Parser p,Datatype data, ExpressionIdentifier name, Class c) {
        super(p,data,name, c);
    }

    @Override
    public String generate() {
        return name.generate();
    }
}
