package Compiler;

import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionManager;
import java.util.LinkedList;

/**
 *
 * @author Coolo
 */
public class Datatype {
    public static final int INT_DATATYPE    = 100;
    public static final int FLOAT_DATATYPE  = 101;
    public static final int STRING_DATATYPE = 102;
    public static final int VOID_DATATYPE   = 103;
    public static final int BOOLEAN_DATATYPE= 104;
    public static final int FUNC_DATATYPE   = 105;
    public static final int NULL_DATATYPE   = 106;
    
    private static LinkedList<Class> classes = new LinkedList<Class>();
    /**
     * Neue Klasse
     * @param c
     */
    public static void newClass(Class c) {
        classes.add(c);
    }
    /**
     * Alle Klassen
     * @return
     */
    public static LinkedList<Class> getClasses() {
        return classes;
    }
    /**
     * Die Klasse via Name.
     * @param n
     * @return
     */
    public static Class getClassByName(String n) {
        for (Class c: classes) {
            if (c.getName().equals(n)) {
                return c;
            }
        }
        return null;
    }

    protected String name;
    protected int dimensions;
    protected int id;
    protected LinkedList<Datatype> parameters;


    public static int Name2Int(String name) {
        if (name.equals("int"))
            return INT_DATATYPE;

        if (name.equals("float"))
            return FLOAT_DATATYPE;

        if (name.equals("boolean"))
            return BOOLEAN_DATATYPE;

        if (name.equals("string"))
            return STRING_DATATYPE;

        if (name.equals("void"))
            return VOID_DATATYPE;

        if (name.equals("null"))
            return NULL_DATATYPE;
        
        for (Class c: classes) {
            if (c.getName().equals(name))
                return c.getID();
        }
        return -1;
    }
    public Datatype(Datatype data,int dimensions,LinkedList<Datatype> parameters) {
        this(data.getID(),dimensions,parameters);
    }

    /**
     * Void Konstruktor
     */
    public Datatype() {
        this(Datatype.VOID_DATATYPE, 0, null);
    }

    /**
     * Konsturktor
     * @param id die ID
     * @param dimensions Anzahl der Dimensionen
     * @param parameters Datentypen der Parameter
     */
    public Datatype(int id,int dimensions,LinkedList<Datatype> parameters) {
        this.id = id;
        this.dimensions = dimensions;
        this.parameters = parameters;

        if (this.dimensions == -1) this.dimensions = 0;
        switch(id) {
            case INT_DATATYPE:
                name = "int";
                break;
            case FLOAT_DATATYPE:
                name = "float";
                break;
            case STRING_DATATYPE:
                name = "string";
                break;
            case VOID_DATATYPE:
                name = "void";
                break;
            case NULL_DATATYPE:
                name = "null";
                break;
            case BOOLEAN_DATATYPE:
                name = "boolean";
                break;
        }
        for (Class c: classes) {
            if (c.getID() == id) {
                name = c.getName();
            }
        }
    }

    /**
     * Der Name des Datentyps
     * @return der Name
     */
    public String getName() {
        return name;
    }
    /**
     * Gibt die ID des Datentyps zurück.
     */
    int getID() {
        return id;
    }
    /**
     * Wandelt die Information in einen String um
     * @return
     */
    @Override
    public String toString() {
        String str = getName();
        for (int i = 0; i<this.dimensions;i++)
            str += "[]";
        if (getParameters()!= null) {
            str += "_parameters_";
            for (Datatype data:getParameters())
                str += "_"+data.toString()+"_";
        }

        return str;
    }
    /**
     * Zwei Datentypen gleich (kurz)
     */
    public boolean match(Datatype data) {
        return match(data,false);
    }
    /**
     * Haben zwei Datentypen denselben Inhalt?
     * @param data
     * @return
     */
    public boolean match(Datatype data, boolean ignoDim) {
        if (data == null) return true;
        if (data.getID() == Datatype.NULL_DATATYPE && (this.getDimensions()>0 || this.getParameters() != null || this.getID()>=1000 || this.getID() == Datatype.STRING_DATATYPE)) {
            return true;
        }
        if (getID() == Datatype.NULL_DATATYPE && (data.getDimensions()>0 || data.getParameters() != null || data.getID()>=1000 || data.getID() == Datatype.STRING_DATATYPE)) {
            return true;
        }


        if (this.getParameters() != null && data.getParameters() != null) {
            //nun müssen die parameter übereinstimmen
            if (this.getParameters().size() == data.getParameters().size()) {
                for (int i = 0;i<data.getParameters().size();i++) {
                    if (!this.getParameters().get(i).match(data.getParameters().get(i))) {
                        return false;
                    }
                }
            } else {
                return false;
            }
        } else if (this.getParameters() != null || data.getParameters() != null) {
            return false;
        }

        if (getID() == data.getID() && (data.dimensions == dimensions || ignoDim)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Generiert die Fehlermeldung
     * @param data
     * @return
     */
    public String generateErrorMsg(Datatype data) {
        return "Unexpected datatype. expecting '"+this.toString().replace("_", " ")+"', got '"+data.toString().replace("_", " ")+"'";
    }

    /**
     * Erstellt die Standard 0 Expression für den Datentyp
     */
    public Expression createDatatypeExpression(ExpressionManager m) {
        if (getParameters() != null || getDimensions()>0) return m.getNullExpression();
        switch (id) {
            case VOID_DATATYPE:
                return null;
            case INT_DATATYPE:
                return m.getIntegerExpression(0);
            case FLOAT_DATATYPE:
                return m.getFloatExpression(0.0f);
            case STRING_DATATYPE:
                return m.getStringExpression("\"\"");
            case BOOLEAN_DATATYPE:
                return m.getBooleanExpression(false);
            default:
                return m.getNullExpression();
        }
    }
    /**
     * Gibt die Anzahl der Dimensionen zurück
     */
    public int getDimensions() {
        return this.dimensions;
    }
    /**
     * Die Parameter
     */
    public LinkedList<Datatype> getParameters() {
        return this.parameters;
    }



    /**
     * Ist es eine Klasse?
     */
    public boolean isClass() {
        return getID() >= 1000 || getID() == STRING_DATATYPE;
    }
    /**
     * Ist es eine vom GC verwaltete Sache?
     */
    public boolean isGC() {
        return getID() >= 1000 || getName().equals("string") || getDimensions()>0;
    }
    /**
     * Ist es ein void datentyp?
     */
    public boolean isVoid() {
        return getID() == Datatype.VOID_DATATYPE && getParameters() == null;
    }
    /**
     * Ist es null?
     */
    public boolean isNull() {
        return getID() == Datatype.NULL_DATATYPE;
    }
    /**
     * Gibt die ID zurück (UNSICHER!!)
     */
    public int getUnsafeID() {
        return getID();
    }
}
