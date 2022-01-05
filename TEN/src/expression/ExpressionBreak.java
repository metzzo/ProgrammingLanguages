/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
public class ExpressionBreak extends Expression {
    public ExpressionBreak() {}
    public String generate() {
        return "jump "+currentBreakLabel+"\n";
    }
}
