package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;

/**
 * Castet von einem Datentyp in den anderen Datentyp
 * @author Coolo
 */
public abstract class ExpressionCast extends ExpressionIdentifier {
    private Datatype from, to;
    private Expression expr;
    /**
     * Erstellt einen cast
     * @param p
     * @param from
     * @param to
     */
    public ExpressionCast(Parser p, Expression expr, Datatype from, Datatype to) {
        super(p,to);
        this.from = from;
        this.to = to;
        this.expr = expr;
    }

    /**
     * Gibt den Datentyp zurück in den gecastet wird
     */
    public Datatype getDatatypeTo() {
        return to;
    }
    /**
     * Gibt den Datentyp von dem gecastet wird
     */
    public Datatype getDatatypeFrom() {
        return from;
    }
    /**
     * Die Expression von der gecastet werden soll
     */
    public Expression getExpression() {
        return expr;
    }
}
