/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;
import java.util.*;
/**
 *
 * @author Coolo
 */
public class ExpressionParameter extends Expression {
    private LinkedList<Expression> expr;
    private ExpressionParameter superParam;
    public void setSuperParam(ExpressionParameter expr) {
        superParam = expr;
    }
    public ExpressionParameter() {
        expr = new LinkedList<Expression>();
    }
    public void addParameter(Expression expr) {
        this.expr.add(expr);
    }
    public String generate() {
        String str = "";
        Iterator<Expression> it;
        it = expr.iterator();
        while (it.hasNext()) {
            Expression e = it.next();
            str += e.generate();
        }
        if (superParam != null) str+="jump2func\n"+superParam.generate();
        return str;
    }
}
