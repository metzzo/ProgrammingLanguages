/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
public class ExpressionAssignment extends ExpressionIdentifier {
    private Expression vari, set;
    public Expression getVariable() {
        return vari;
    }
    public ExpressionAssignment(Expression vari, Expression set) {
        this.vari = vari;
        this.set = set;
    }
    public String generateParameter() {
        return "";
    }
    public String generate() {
        String str ="";
        str += vari.generate();
        str += set.generate();
        return str+"set\n";
    }
}
