/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
public class ExpressionString extends Expression {
    private String value;
    public ExpressionString(String value) throws Exception {
        if (value.substring(0,1).equals("\"") && value.substring(value.length()-1).equals("\"")); else throw new Exception();
        
        this.value = value;
    }
    public String generate() {
        if (value == null) value = "";
        return "pushstring "+value+"\n";
    }
}
