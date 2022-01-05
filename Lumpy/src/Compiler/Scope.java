package Compiler;
import Compiler.Parser.Parser;
import java.util.*;
/**
 * Ein Scope beinhaltet beliebig viele Variablen, Konstanten und Funktionen
 * @author Coolo
 */
public class Scope {
    private HashMap<String, Variable> variables;
    private LinkedList<Function> functions;
    private Scope superScope;
    private Parser parser;
    private String name;
    private Class ownerClass;
    /**
     * Konstruktor
     * @param parser
     * @param superScope
     */
    public Scope(String name, Parser parser, Scope superScope) {
        this.superScope = superScope;
        this.parser = parser;
        this.name = name;
        variables = new HashMap<String, Variable>();
        functions = new LinkedList<Function>();

    }
    /**
     * Existiert die gegebene Variable bereits?
     * @param name
     * @return
     */
    public boolean varExist(String name) {
        if (variables.get(name) != null)
            return true;
        else
            return false;
    }
    /**
     * Erstellt eine neue Variable
     * @param var
     * @throws SyntaxException
     */
    public void newVariable(Variable var) throws SyntaxException {
        if (varExist(var.getName())) {
            parser.error("Variable '"+var.getName()+"' already exists");
        }
        //schauen ob eine variable mit diesem namen bereits existiert
        for (Function func: getFunctions()) {
            if (var.getName().equals(func.getName())) {
                parser.error("Function and variable with same name: "+var.getName());
            }
        }
        variables.put(var.getName(), var);
        
    }
    /**
     * Erstellt eine neue Funktion
     * @param func
     */
    public void newFunction(Function func) throws SyntaxException {
        //schauen ob eine variable mit diesem namen bereits existiert
        for (Variable var: variables.values()) {
            if (var.getName().equals(func.getName())) {
                parser.error("Function and variable with same name: "+var.getName());
            }
        }
        //schauen ob eine funktion mit doppeldeutigem datentyp bereits vorhanden ist
        for (Function func2: functions) {
            if (func2.getName().equals(func.getName())) {
                //schauen ob die Parameter gleich sind
                //anzahl der parameter vergleichen
                if (func2.getParameter().size() == func.getParameter().size()) {
                    //typen der parameter vergleichen
                    int i = 0;
                    boolean same = true;
                    while (i< func2.getParameter().size()) {
                        Variable v1,v2;
                        v1 = func.getParameter().get(i);
                        v2 = func2.getParameter().get(i);
                        boolean match = false;
                        if (v1.getDatatype() == null && v2.getDatatype() == null) {
                            match = true;
                        } else if (v1.getDatatype() != null && v2.getDatatype() != null) {
                            if (v1.getDatatype().match(v2.getDatatype())) {
                                match = true;
                            }
                        }

                        if (!match) {
                            same = false;
                            break;
                        }
                        i++;
                    }
                    if (same && func.isCallable()) {
                        parser.error("Duplicate function. '"+func.getName()+"'");
                    }
                }
            }
        }

        functions.add(func);
       
    }
    /**
     * Gibt eine vairable zurück, geht auch in die unteren scopes
     * @param name
     * @return
     * @throws SyntaxException
     */
    public Variable getVariable(String name) {
        Variable v = variables.get(name);
        if (v != null) return v;
        if (superScope != null) {
            return superScope.getVariable(name);
        } else {
            return null;
        }
    }
    /**
     * Liefert eine liste mit all den funtkionen, welche denselben namen haben
     * @param name
     * @return
     */
    public LinkedList<Function> getFunction(String name) {
        LinkedList<Function> newList = new LinkedList<Function>();
        for (Function func: functions) {
            if (func.getName().equals(name) && func.isCallable()) newList.add(func);
        }
        if (superScope != null) newList.addAll(superScope.getFunction(name));
        return newList;
    }
    /**
     * Gibt die LinkedList mit den funktionen zurück
     */
    public LinkedList<Function> getFunctions() {
        return functions;
    }
    /**
     * Gibt den darüberliegenden Scope zurück
     */
    public Scope getSuperScope() {
        return this.superScope;
    }
    /**
     * Gibt den Namen zurück
     */
    public String getName() {
        return name;
    }
    /**
     * Setzt die Klasse, zu dem dieser Scope gehört
     */
    public void setClass(Class c) {
        this.ownerClass = c;
    }
    /**
     * Gibt die Klasse zurück
     */
    public Class getOwnerClass() {
        return ownerClass;
    }
    /**
     * gibt den parser zurück
     */
    public Parser getParser() {
        return parser;
    }
}
