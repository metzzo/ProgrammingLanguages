/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
public class ExpressionReturn extends Expression{
    private Expression expr;
    public ExpressionReturn(Expression expr) {
        this.expr = expr;
    }

    public String generate() {
        return expr.generate()+"return\n";
    }
}
