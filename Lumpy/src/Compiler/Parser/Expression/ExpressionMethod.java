package Compiler.Parser.Expression;

import Compiler.*;
import Compiler.Class;
import Compiler.Parser.Parser;

/**
 * Ein Methodenname.
 * @author Coolo
 */
public abstract class ExpressionMethod extends ExpressionIdentifier {
    protected Class c;
    protected ExpressionIdentifier name;
    /**
     * Konstruktor
     * @param p Parser
     * @param data Datentyp
     * @param c zueghörige Klasse
     * @param name Funktion
     */
    public ExpressionMethod(Parser p,Datatype data, ExpressionIdentifier name, Class c) {
        super(p,data);
        this.c = c;
        this.name = name;
    }

    @Override
    public Variable getVariable() {
        return name.getVariable();
    }

    public Class getOwnerClass() {
        return c;
    }
}
