package Compiler;

import Compiler.Parser.Expression.Expression;
import java.util.LinkedList;

/**
 * Eine Variable
 * @author Coolo
 */
public class Variable {
    private static int maxid = 0;
    private static LinkedList<Variable> variables = new LinkedList<Variable>();
    public static LinkedList<Variable> getVariables() {
        return variables;
    }


    protected String name;
    protected Datatype datatype;
    protected boolean isPub = true;
    protected String synonym;
    private boolean isStatic = false;
    private boolean ref = false;
    private boolean used = false;
    private boolean isConst = false;
    private int id = 0;
    private Expression optional = null;

    /**
     * Konstruktor
     */
    public Variable(String name, Datatype datatype) {
        this.name = name;
        this.datatype = datatype;
        this.synonym = name;
        this.id = maxid;
        maxid++;
    }

    /**
     * Name
     */
    public String getName() {
        return name;
    }

    
    /**
     * Gibt den Datentyp aus, ohne die Überprüfung ob null
     */
    public Datatype getDatatype() {
        return datatype;
    }
    /**
     * Setzt den Datentyp
     */
    public void setDatatype(Datatype data) {
        if (this.datatype == null)
            this.datatype = data;
    }

    /**
     * benutze es
     */
    public void use() {
        this.used = true;
        variables.add(this);
    }
    /**
     * wurde es schon benutzt?
     */
    public boolean isUsed() {
        return used;
    }
    /**
     * Setzt es als public
     */
    public void setPublic(boolean isPub) {
        this.isPub = isPub;
    }

    /**
     * Ist es public?
     */
     public boolean isPublic() {
         return isPub;
     }

     /**
      * Vorsichtig verwenden...
      */
     public void setName(String name) {
         this.name = name;
     }


     /**
     * Setzt ein Synonym
     */
    public void setSynonym(String syn) {
        this.synonym = syn;
    }

    /**
     * Das synonym
     */
    public String getSynonym() {
        return synonym;
    }

    /**
     * Konstante
     *
     */
    public void setConstant() {
        isConst = true;
    }
    /**
     * ist es konstant?
     */
    public boolean isConstant() {
        return isConst;
    }

    /**
     * es ist eine referenz
     */
    public void reference() {
        this.ref = true;
    }

    /**
     * Ist es eine Referenz?
     */
    public boolean isReference() {
        return ref;
    }

    /**
     * bekomme die optional Expression
     */
    public Expression getOptional() {
        return optional;
    }

    /**
     * Setzt die Expression
     */
    public void setOptional(Expression expr) {
        optional = expr;
    }

    /**
     * Setzt es statisch
     */
    public void setStatic(boolean st) {
        this.isStatic = st;
    }

    /**
     * Ist es statisch?
     */
    public boolean isStatic() {
        return isStatic;
    }

    /**
     * Die ID
     */
    public int getID() {
        return id;
    }


    /**
     * Doch nicht benutzt
     */
    public void notUsed() {
        this.used = false;
    }
}
