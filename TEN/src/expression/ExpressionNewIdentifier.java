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
public class ExpressionNewIdentifier extends Expression {
    private HashMap<Expression,Expression> exprMap = new HashMap<Expression,Expression>();
    private LinkedList<Expression> implementList = new LinkedList<Expression>();
    public ExpressionNewIdentifier() {}
    public void register(Expression name, Expression expr) {
        exprMap.put(name, expr);
    }
    public void registerImplement(Expression expr) {
        implementList.add(expr);
    }
    public String generate() {
        String str = "";
        
        for (Expression key:exprMap.keySet()) {
            str += exprMap.get(key).generate();
            str += key.generate();
            str += "newidentifier\n";
        }
        for (Expression e:implementList) {
            str += e.generate();
        }
        str += "identifiers "+(exprMap.size() + implementList.size())+"\n";
        
        return str;
    }
}
