package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import Compiler.Variable;

/**
 * Ein ExpressionIdentifier besitzt alle identifier die mit . , [ oder ( beginnen.
 * @author Coolo
 */
public abstract class ExpressionIdentifier extends Expression {
    /**
     * Konstuktor erstellt einen identifier
     * @param p
     * @param d
     */
    public ExpressionIdentifier(Parser p, Datatype d) {
        super(p,d);
    }

    /**
     * Gibt die Variable zurück
     * @return
     */
    public Variable getVariable() {
        return null;
    }
}
