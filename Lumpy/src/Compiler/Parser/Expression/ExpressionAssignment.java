package Compiler.Parser.Expression;

import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import Compiler.Variable;

/**
 * Eine Zuweisung
 * @author Coolo
 */
public abstract class ExpressionAssignment extends ExpressionIdentifier {
    protected Variable var;
    protected Expression expr, get;
    public ExpressionAssignment(Parser parser, Variable var,Expression get, Expression expr) throws SyntaxException {
        super(parser,expr.getDatatype());
        this.var = var;
        this.expr = expr;
        this.get = get;
        if (var.isConstant()) {
            getParser().error("Cannot assign a constant '"+var.getName()+"'.");
        }
        this.var.use();
    }

    @Override
    public Variable getVariable() {
        return var;
    }
}
