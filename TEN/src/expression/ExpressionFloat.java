/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
public class ExpressionFloat extends Expression {
    private float value;
    public ExpressionFloat(float value) {
        this.value = value;
    }
    public String generate() {
        return "pushfloat "+value+"\n";
    }
}
