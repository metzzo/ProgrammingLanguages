/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;
import extra.*;
/**
 *
 * @author Coolo
 */
public class ExpressionOperator extends Expression {
    private Operator op;
    private Expression expr1, expr2;
    public ExpressionOperator(Operator op, Expression expr1, Expression expr2) {
        this.op = op;
        this.expr1 = expr1;
        this.expr2 = expr2;
    }
    public String generate() {
        if (expr1 == null) expr1 = new ExpressionInt(0);
        if (expr2 == null) expr2 = new ExpressionInt(0);
        return expr1.generate()+expr2.generate()+op.getOpCode()+"\n";
    }
}
