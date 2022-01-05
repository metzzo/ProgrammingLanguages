package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import Compiler.Variable;

/**
 * Zugriff auf einen Member einer Instanz
 * @author Coolo
 */
public abstract class ExpressionAccess extends ExpressionIdentifier {
    protected ExpressionIdentifier left, right;
    public ExpressionAccess(Parser p, ExpressionIdentifier left, ExpressionIdentifier right) throws SyntaxException {
        super(p, null);

        if (left == null) p.error("Left operator is null.");
        if (right == null) p.error("Right operator is null.");

        this.left = left;
        this.right = right;
    }

    /**
     * Gibt das rechte zurück
     * @return
     */
    public ExpressionIdentifier getRight() {
        return right;
    }

    @Override
    public Variable getVariable() {
        return right.getVariable();
    }
    @Override
    public Datatype getDatatype() throws SyntaxException {
        return right.getDatatype();
    }
}
