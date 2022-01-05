package Compiler.Parser.Expression.CExpression;

import Compiler.Datatype;
import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionNew;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import java.util.LinkedList;

/**
 * New in C
 * @author Coolo
 */
public class CExpressionNew extends ExpressionNew {
    public static int maxArraySize = 0;
    public CExpressionNew(Parser p, Datatype data) throws SyntaxException {
        super(p,data);
    }
    public CExpressionNew(Parser p, Datatype data, LinkedList<Expression> exprs) {
        super(p,data,exprs);
        if (exprs.size()>maxArraySize) {
            this.maxArraySize = exprs.size();
        }
    }

    @Override
    public String generate() {
        try {
            if (exprs == null) {
                return "new_"+getDatatype().getName()+"()";
            } else {
                String str = "allocarray_"+exprs.size()+"_(sizeof("+CExpressionAssignment.getRealDatatype(getDatatype())+")";
                for (Expression expr: exprs) {
                    str += ", "+expr.generate();
                }
                if (new Datatype(getDatatype(),getDatatype().getDimensions() - 1,null).isGC()) {
                    str += ", &arrayTrace";
                } else {
                    str += ", &standardTrace";
                }
                str += ")";
                return str;
            }
        } catch (SyntaxException ex) {}
        return "ERROR";
    }
}
