package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 *
 * @author Coolo
 */
public abstract class ExpressionAnonymousFuncCall extends ExpressionIdentifier {
    protected LinkedList<Expression> parameters;
    protected Expression name;
    /**
     * Konstruktor
     * @param p der Parser
     * @param name der name
     * @param parameters die parameter
     */
    public ExpressionAnonymousFuncCall(Parser p, Datatype data, Expression name, LinkedList<Expression> parameters) {
        super(p,data);
        this.name = name;
        this.parameters = parameters;
    }
    
}
