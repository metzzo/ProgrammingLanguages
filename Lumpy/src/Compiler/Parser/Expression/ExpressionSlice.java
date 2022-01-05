package Compiler.Parser.Expression;

import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import Compiler.Variable;

/**
 * Array Slicing.
 * @author Coolo
 */
public abstract class ExpressionSlice extends ExpressionIdentifier {
    protected ExpressionIdentifier self;
    protected Expression start, end;

    /**
     * Konstruktor
     * @param p
     * @param self
     * @param start
     * @param end
     * @throws SyntaxException
     */
    public ExpressionSlice(Parser p, ExpressionIdentifier self, Expression start, Expression end) throws SyntaxException {
        super(p,self.getDatatype());
        this.self = self;
        this.start = start;
        this.end = end;
    }

    @Override
    public Variable getVariable() {
        return self.getVariable();
    }
}
