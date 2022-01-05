/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
public class ExpressionElse extends Expression {
    private Expression code;
    public ExpressionElse(ExpressionIf ifs, Expression code) {
        ifs.setElse( this );
        this.code = code;
    }
    public String generate() {
        return code.generate();
    }
}
