package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import Compiler.Variable;
import java.util.LinkedList;

/**
 * Eine variablen Deklaration
 * @author Coolo
 */
public abstract class ExpressionDeclaration extends Expression {
    private LinkedList<Variable> decVar;
    private LinkedList<Expression> values;
    protected boolean onlySet = false;
    protected boolean inGenerator;
    
    public ExpressionDeclaration(Parser parser, LinkedList<Variable> decVar, LinkedList<Expression> values,boolean onlySet) throws SyntaxException {
        super(parser,new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.decVar = decVar;
        this.values = values;
        this.onlySet = onlySet;
        this.inGenerator = parser.isInGenerator();
        //benutze variable (und setze wenn nötig datentyp)
        int i = 0;
        while (i < decVar.size()) {
            if (values.get(i) instanceof ExpressionEmpty);
            else {
                decVar.get(i).use();
                decVar.get(i).setDatatype(values.get(i).getDatatype());
            }
            i++;
        }
    }
    /**
     * Die Variablen welche deklariert werden
     * @return
     */
    public LinkedList<Variable> getDecVar() {
        return decVar;
    }
    /**
     * Die Werte welche die variablen bekommen
     * @return
     */
    public LinkedList<Expression> getValues() {
        return values;
    }
}
