/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
public class ExpressionInt extends Expression {
    private int value;
    public ExpressionInt(int value) {
        this.value = value;
    }
    public String generate() {
        return "pushint "+value+"\n";
    }
}
