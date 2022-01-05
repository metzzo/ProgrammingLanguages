/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;

/**
 *
 * @author Coolo
 */
import java.util.*;
public class ExpressionRoot extends Expression {
    private LinkedList<Expression> children = new LinkedList<Expression>();
    public void addChild(Expression expr) {
        children.add(expr);
    }
    public String generate() {
        String text="";
        for (Expression expr: children) {
            text+=expr.generate();
        }
        return text;
    }

    public LinkedList<Expression> getChildren() {
        return children;
    }
}
