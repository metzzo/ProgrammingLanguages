package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import Compiler.Property;
import Compiler.Variable;
import java.util.LinkedList;

/**
 * Ein Property Zugriff. Muss dynamisch entscheiden, ob es set/get ist
 * @author Coolo
 */
public abstract class ExpressionProperty extends ExpressionIdentifier {
    protected Property prop;
    protected ExpressionIdentifier self;
    protected Expression value;
    protected LinkedList<Expression> indexer;

    public ExpressionProperty(Parser p,Property prop,ExpressionIdentifier self) {
        super(p,new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.prop = prop;
        this.self = self;
        this.indexer = new LinkedList<Expression>();
    }

    public void setValue(Expression value) {
        this.value = value;
    }

    public Expression getValue() {
        return value;
    }

    public void setIndexer(LinkedList<Expression> indexer) {
        this.indexer = indexer;
    }
    @Override
    public Datatype getDatatype() {
        return prop.getDatatype();
    }

    @Override
    public Variable getVariable() {
        if (value != null || prop.getGet() == null) {
            return prop.getSet();
        } else {
            return prop.getGet();
        }
    }

    public Property getProperty() {
        return prop;
    }
}
