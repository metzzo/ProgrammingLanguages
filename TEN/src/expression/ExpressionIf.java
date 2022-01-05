/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
public class ExpressionIf extends Expression {
    
    private Expression expr;
    private ExpressionScope block;
    private ExpressionElse elses;
    public ExpressionIf(Expression expr, ExpressionScope block) {
        this.expr = expr;
        this.block = block;
    }
    public void setElse(ExpressionElse elses) {
        this.elses = elses;
    }
    public String generate() {
        if (expr == null) expr=new ExpressionInt(0);
        if (block == null) block=new ExpressionScope(null);
        int lbl = Expression.Label;
        Expression.Label++;
        int lbl1 = Expression.Label;
        Expression.Label ++;
        String ret = "";
        ret += expr.generate();
        ret += "check "+lbl+"\n";
        ret += block.generate();
        if (elses != null) {
            ret += "jump "+lbl1+"\n";
            ret += "label "+lbl+"\n";
            ret += elses.generate();
            ret += "label "+lbl1+"\n";
            

        } else {
            ret += "label "+lbl+"\n";
        }
        
        return ret;
    }
}
