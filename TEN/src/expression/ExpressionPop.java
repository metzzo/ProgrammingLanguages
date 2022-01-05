/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
public class ExpressionPop extends Expression {
    private Expression expr;
    public ExpressionPop(Expression expr) {
        this.expr = expr;
    }
    public String generate() {
        return expr.generate() + "pop\n";
    }
}
