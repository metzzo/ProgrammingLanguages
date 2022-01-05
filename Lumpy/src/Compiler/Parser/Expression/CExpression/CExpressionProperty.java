package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionIdentifier;
import Compiler.Parser.Expression.ExpressionProperty;
import Compiler.Parser.Parser;
import Compiler.Property;

/**
 * Ein Zugriff auf Propertys in C
 * @author Coolo
 */
public class CExpressionProperty extends ExpressionProperty {
    public CExpressionProperty(Parser p,Property prop,ExpressionIdentifier self) {
        super(p,prop,self);
    }


    public String generate() {
        String str = "";
        String indexer = "";
        boolean start = true;
        for (Expression expr: super.indexer) {
            if (start) indexer += ", ";
            indexer += expr.generate();
            start = true;
        }
        String me = self.generate();
        if (prop.isStatic()) {
            me = "";
        }
        if (value != null) {
            if (!me.equals("")) me += ",";
            str += prop.getSet().generateFuncName()+"("+me+value.generate()+indexer+")";
        } else {
            str += prop.getGet().generateFuncName()+"("+me+indexer+")";
        }
        return str;
    }
}
