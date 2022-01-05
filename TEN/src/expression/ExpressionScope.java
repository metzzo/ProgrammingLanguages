/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;
import java.util.*;
/**
 *
 * @author Coolo
 */
public class ExpressionScope extends Expression {
    private LinkedList<Expression> children = new LinkedList<Expression>();
    public ExpressionScope(LinkedList<Expression> expr) {
        this.children = expr;
    }
    public String generate() {
        if (children.size()>0) {
            String text=";scopebegin\n";
            for (Expression expr: children) {
                text+=expr.generate();
            }
            text+=";scopeend\n";
            return text;
        } else {
            return "";
        }
    }
}
