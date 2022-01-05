package Compiler.Parser;

import Compiler.Import;
import Compiler.SyntaxException;
import java.util.LinkedList;

/**
 * Ein leerer Parser, ist nur ein DUmmy, für den HyperScope
 * @author Coolo
 */
public class VoidParser extends Parser {
    public VoidParser() throws SyntaxException {
        super(null, null,null);
    }

    public String getLanguageName() {
        return "void";
    }

    public void execute() {}

    public String getGeneratedCode() { return ""; }

    public void link(LinkedList<Import> imp) {}

    public void backend() {}

    public void generate(String str, boolean bool) {}
}
