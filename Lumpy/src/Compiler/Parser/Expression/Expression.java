package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import Compiler.Variable;

/**
 * Die abstrakte Expression Klasse, jeder Ausdruck leitet von dieser Klasse ab
 * @author Coolo
 */
public abstract class Expression {
    private Datatype datatype;
    private Parser parser;
    private int line = -1;

    public Expression(Parser p, Datatype data) {
        this.datatype = data;
        this.parser = p;
    }
    /**
     * Gibt den Datentyp zurück
     * @return Datentyp
     */
    public Datatype getDatatype() throws SyntaxException {
        return datatype;
    }
    /**
     * Setzt den Datentyp (obacht, kann probleme herbeiführen
     */
    public void setDatatype(Datatype data) {
        this.datatype = data;
    }
    /**
     * Gibt den Parser zurück
     */
    public Parser getParser() {
        return parser;
    }
    /**
     * Setzt die Zeilennummer
     */
    public void setLine(int line) {
        this.line = line;
    }
    /**
     * Gibt die Zeilennummer zurück
     */
    public int getLine() {
        return line;
    }
    /**
     * Generiert den zugehörigen String
     * @return
     */
    public abstract String generate();
}
