/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
public class ExpressionWhile extends Expression {
    private Expression block, expr;

    public ExpressionWhile(Expression expr, Expression block) {
        this.block = block;
        this.expr = expr;
    }
    public String generate() {
        int lbl1, lbl2;
        lbl1 = Expression.Label;
        Expression.Label++;
        lbl2 = Expression.Label;
        Expression.Label++;
        String str ="";
        str += "label "+lbl1+"\n";
        str += expr.generate();
        str += "check "+lbl2+"\n";
        int tmp = currentBreakLabel;
        currentBreakLabel = lbl2;
        str += block.generate();
        currentBreakLabel = tmp;
        str += "jump "+lbl1+"\n";
        str += "label "+lbl2+"\n";
        return str;
    }
}
