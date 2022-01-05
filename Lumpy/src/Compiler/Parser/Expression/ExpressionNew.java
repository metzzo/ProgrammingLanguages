package Compiler.Parser.Expression;

import Compiler.*;
import Compiler.Class;
import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 * Erstellt eine neue Instanz/dimensioniert ein array
 * @author Coolo
 */
public abstract class ExpressionNew extends ExpressionIdentifier {
    protected LinkedList<Expression> exprs = null;
    public ExpressionNew(Parser p, Datatype data) throws SyntaxException {
        super(p, data);
        if (data.isClass()) {
            Class c = Class.getClassByName(data.getName());
            if (c.getMode() == Class.IS_ABSTRACT) {
                p.error("Cannot create abstract class '"+data.getName()+"'");
            }
            for (Function func: c.getMethods()) {
                if (func instanceof CodeFunction) {
                    CodeFunction cfunc = (CodeFunction)func;
                    if (cfunc.getMode() == Class.IS_ABSTRACT) {
                        //schauen ob wo überladen
                        boolean overload = false;
                        for (Function f: c.getMethods()) {
                            if (f.match(cfunc)) {
                                if (((CodeFunction)f).getMode() != Class.IS_ABSTRACT) {
                                    overload = true;
                                }
                            }
                        }
                        if (!overload) p.error("Cannot create class with abstract method.");
                    }
                }
            }
        }
    }
    public ExpressionNew(Parser p, Datatype data, LinkedList<Expression> exprs) {
        super(p,data);
        this.exprs = exprs;
    }
    
}
