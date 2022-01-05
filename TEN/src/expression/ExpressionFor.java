/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
public class ExpressionFor extends Expression {
    private Expression init, to, step, block;
    private Expression vari;
    public ExpressionFor(ExpressionAssignment init, Expression to, Expression step, Expression block){
        this.init = init;
        vari = (ExpressionIdentifier)init.getVariable();
        this.to = to;
        this.step = step;
        this.block = block;
    }
    public String generate() {
        String str = "";
        str += init.generate();
        int lbl1, lbl2;
        lbl1 = Expression.Label;
        Expression.Label++;
        lbl2 = Expression.Label;
        Expression.Label++;
        str+="label "+lbl1+"\n";
        
        str+=vari.generate();
        str+=vari.generate();
        str+=step.generate();
        str+="add\n";
        str+="set\n";
        str+="pop\n";
        str+=vari.generate();
        str+=step.generate();
        str+=to.generate();
        str+="forcheck "+lbl2+"\n";
        int tmp = currentBreakLabel;
        currentBreakLabel = lbl2;
        str+=block.generate();
        currentBreakLabel = tmp;
        str+="jump "+lbl1+"\n";
        str+="label "+lbl2+"\n";
        return str;
    }
}
