package Compiler.Parser.Expression;

import Compiler.CodeFunction;
import Compiler.Datatype;
import Compiler.Parser.Parser;
import Compiler.Variable;
import java.util.LinkedList;

/**
 * Eine anonyme Funktion
 * @author Coolo
 */
public abstract class ExpressionAnonymousFunc extends ExpressionIdentifier {
    protected CodeFunction func;
    /**
     * Konstrutkor
     * @param p
     * @param data
     */
    public ExpressionAnonymousFunc(Parser p,CodeFunction func) {
        super(p,convertDatatype(func));
        this.func = func;
        
    }

    private static Datatype convertDatatype(CodeFunction func) {
        LinkedList<Datatype> params = new LinkedList<Datatype>();
        for (Variable par: func.getParameter()) {
            params.add(par.getDatatype());
        }
        return new Datatype(func.getDatatype(),func.getDatatype().getDimensions(),params);
    }


}
