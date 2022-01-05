package Compiler.Parser.Expression;
import Compiler.Class;
import Compiler.Datatype;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import Compiler.Variable;

/**
 * EIn statischer Zugriff auf einen member
 * @author Coolo
 */
public abstract class ExpressionStaticAccess extends ExpressionIdentifier {
    protected Class c;
    public ExpressionStaticAccess(Parser p, Class c) {
        super(p,new Datatype(c.getUnsafeID(),0,null));
        this.c = c;
    }

    @Override
    public Variable getVariable() {
        try {
            Variable v = new Variable(c.toString(),getDatatype());
            return v;
        } catch(SyntaxException ex) {}
        return null;
    }
}
