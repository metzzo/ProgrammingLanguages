package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import java.util.LinkedList;

/**
 * EIn automatisch generiertes Array
 * @author Coolo
 */
public abstract class ExpressionAutoArray extends ExpressionIdentifier {
    protected LinkedList<Expression> arr;
    /**
     * Konstrktor.
     * @param p
     * @param exprs
     * @throws SyntaxException
     */
    public ExpressionAutoArray(Parser p, LinkedList<Expression> exprs) throws SyntaxException {
        super(p,null);
        Datatype data = new Datatype(exprs.get(0).getDatatype(),exprs.get(0).getDatatype().getDimensions() + 1, null);
        setDatatype(data);

        this.arr = exprs;
    }
}
