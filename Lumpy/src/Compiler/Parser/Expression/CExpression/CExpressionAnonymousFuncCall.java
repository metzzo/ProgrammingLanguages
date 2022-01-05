package Compiler.Parser.Expression.CExpression;

import Compiler.Datatype;
import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionAnonymousFuncCall;
import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 * Ein anonymer funktionsaufruf in c
 * @author Coolo
 */
public class CExpressionAnonymousFuncCall extends ExpressionAnonymousFuncCall {
    public CExpressionAnonymousFuncCall(Parser p, Datatype data,Expression name, LinkedList<Expression> parameters) {
        super(p,data,name,parameters);
    }

    @Override
    public String generate() {
        String str = "";
        str += "("+name.generate()+")(";
        boolean start = false;
        for (Expression expr: parameters) {
            if (start) str += ", ";
            str += expr.generate();
            start = true;
        }
        str += ")";

        return str;
    }
}
