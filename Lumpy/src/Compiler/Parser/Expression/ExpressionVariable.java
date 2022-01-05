package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import Compiler.Variable;

/**
 * Ein Variablenaufruf
 * @author Coolo
 */
public abstract class ExpressionVariable extends ExpressionIdentifier {
    protected Variable var;
    public ExpressionVariable(Parser p, Variable var) throws SyntaxException {
        super(p, null);

        this.var = var;
        
        var.use();
    }

    @Override
    public Variable getVariable() {
        return var;
    }

    @Override
    public Datatype getDatatype() throws SyntaxException {
        if (var.getDatatype() == null) {
            getParser().error("Datatype of variable: "+var.getName()+" is unknown.",true);
        }
        return var.getDatatype();
    }
}
