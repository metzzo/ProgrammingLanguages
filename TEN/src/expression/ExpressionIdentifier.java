/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;



/**
 *
 * @author Coolo
 */
public class ExpressionIdentifier extends Expression {
    private ExpressionIdentifier right;
    private ExpressionParameter parameter;
    private boolean first;
    private Expression text;
    protected ExpressionIdentifier() {}
    public ExpressionIdentifier(Expression text, ExpressionParameter parameter, boolean first) {
        this.text = text;
        this.parameter = parameter;
        this.first = first;
    }
    public String generate() {
        
        String str = "";
        str += text.generate();
        if (first) {
            str += "getidentifier\n";
        } else {
            if (parameter != null) {
                if (!text.generate().equals("")) 
                    str += "calltable\n";
                else
                    str += "callstack\n";
                str += parameter.generate();
                str += "jump2func\n";
            } else {
                str += "gettable\n";
            }
        }
        if (right != null) {
            str += right.generate();
        }

        
        
        return str;
    }
    public void setParameter(ExpressionParameter expr) {
        parameter = expr;
    }
    /*
    private String generateParameter() {
        String str = "";
        if (right != null)
            str += right.generateParameter();
        if (parameter != null)
            str += parameter.generate(true);
        return str;
    }*/
    public void setRight(ExpressionIdentifier expr) {
        this.right = expr;
    }
    public ExpressionIdentifier getRight() {
        return right;
    }
    public boolean hasParameter() {
        return parameter!=null;
    }
    public void setName(Expression name) {
        this.text = name;
    }
}
