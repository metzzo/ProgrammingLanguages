package Compiler.Parser.Expression.CExpression;

import Compiler.*;
import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionFunctionCall;
import Compiler.Parser.Parser;
import Compiler.Class;
import java.util.LinkedList;

/**
 * Ein Funktionsaufruf in C
 * @author Coolo
 */
public class CExpressionFunctionCall extends ExpressionFunctionCall {
    public CExpressionFunctionCall(Parser p, Function func, LinkedList<Expression> parameters, Class c) {
        super(p,func,parameters, c);

    }
    @Override
    public String generate() {
        String str = getFunction().generateFuncName();
        str += "( ";
        boolean start = false;
        int i = 0;
        if (getFunction() instanceof CodeFunction && ((CodeFunction)getFunction()).getScope().getOwnerClass() != null && !getFunction().isStatic()) {
            i = -1;
        }
        for (Expression par: getParameter()) {
            if (!start && getFunction().isStatic()) continue;
            if (start) str += ", ";
            if (i>=0 && getFunction().getParameter().get(i).isReference()) {
                str += "&";
            }
            str += par.generate();
            start = true;
            i++;
        }
        str += " )";
        return str;
    }
}
