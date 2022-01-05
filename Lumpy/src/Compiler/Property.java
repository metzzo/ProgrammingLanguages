package Compiler;

import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 * Ein Property, mit ausgewählter set/get Methode
 * @author Coolo
 */
public class Property extends Variable {
    private CodeFunction set,get;
    private LinkedList<Datatype> indexer;
    public Property(String name, Datatype data,CodeFunction set, CodeFunction get,LinkedList<Datatype> indexer) {
        super(name,data);
        this.set = set;
        this.get = get;
        this.indexer = indexer;
    }

    @Override
    public Datatype getDatatype() {
        if (get != null) {
            return get.getDatatype();
        } else if (set != null) {
            return set.getParameter().get(0).getDatatype();
        } else {
            return super.getDatatype();
        }
    }

    public CodeFunction getSet() {
        return set;
    }

    public CodeFunction getGet() {
        return get;
    }
    public LinkedList<Datatype> getIndexer() {
        return indexer;
    }

    public void compile(Parser p) throws SyntaxException {
        if (this.getGet() != null && !this.getGet().isCompiled()) {
            p.compileFunction(this.getGet(),null);
        }
        if (this.getSet() != null && !this.getSet().isCompiled()) {
            p.compileFunction(this.getSet(),null);
        }
    }
}
