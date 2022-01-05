package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import Compiler.Variable;
import java.util.LinkedList;

/**
 * Ein Array Zugriff.
 * @author coolo
 */
public abstract class ExpressionArray extends ExpressionIdentifier {
    protected ExpressionIdentifier var;
    protected LinkedList<Expression> arrs;
    public ExpressionArray(Parser p, ExpressionIdentifier var, LinkedList<Expression> arrs) throws SyntaxException {
        super(p,var.getDatatype());
        this.var = var;
        this.arrs = arrs;
    }
    public Variable getVariable() {
        return var.getVariable();
    }
    @Override
    public Datatype getDatatype() throws SyntaxException {
        Datatype data = new Datatype(super.getDatatype(),super.getDatatype().getDimensions() - arrs.size(),super.getDatatype().getParameters());
        
        return data;
    }
}
