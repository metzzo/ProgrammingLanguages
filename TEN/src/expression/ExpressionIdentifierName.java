/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
public class ExpressionIdentifierName extends Expression{
    private String data;
    private Expression info;
    public ExpressionIdentifierName(String data) {
        if (data.equals("(") || data.equals(".")) data = null;
        this.data = data;
    }

    public String generate() {
        if (data != null)
            return "pushstring \""+data+"\"\n";
        else
            return "";
    }
}
