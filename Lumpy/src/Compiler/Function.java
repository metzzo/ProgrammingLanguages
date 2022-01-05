package Compiler;
import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionEmpty;
import Compiler.Parser.Parser;
import java.util.*;
/**
 * Eine festdefinierte Funktion. Diese Funktion hat einen eindeutigen globalen Namen
 * @author Coolo
 */
public class Function extends Variable {
    private LinkedList<Variable> parameters;
    
    private boolean synonymOverload = false;
    private boolean defined = false;
    private boolean callable = true;
    private boolean compiled = false;

    /**
     * Konstruktor
     * @param name
     */
    public Function(String name,Datatype data) {
        super(name,data);
        this.name = name;
        setDatatype(data);
        this.synonym = name;
        parameters = new LinkedList<Variable>();
    }
    /**
     * Fügt einen Parameter hinzu
     * @param name der name des parameters
     * @param data der datentyp des parameters
     */
    public Variable newParameter(Parser p, String name, Datatype data, Expression expr) throws SyntaxException {
        Variable var = new Variable(name,data);
        var.setSynonym("param_"+parameters.size());
        var.setOptional(expr);
        parameters.add(var);

        if (expr != null) {
            if (var.getDatatype() != null) {
                if (var.getDatatype().match(expr.getDatatype())) {
                    var.setDatatype(expr.getDatatype());
                } else {
                   p.error(var.getDatatype().generateErrorMsg(expr.getDatatype()));
                }
            } else {
                var.setDatatype(expr.getDatatype());
            }
        }

        return var;
    }

    /**
     * Der Name
     */
    public String getName() {
        return name;
    }

    /**
     * überprüft auf gleichheit
     */
    public boolean match(Function func) {
        if (func.getName().equals(getName())) {
            if (func.getParameter().size() == getParameter().size()) {
                int i = 0;
                for (Variable v: func.getParameter()) {
                    if (v.getDatatype() != null && getParameter().get(i).getDatatype() != null && !v.getDatatype().match(getParameter().get(i).getDatatype())) return false;
                    i++;
                }
            } else return false;
        } else return false;
        return true;
    }

    /**
     * Schaut ob die gegebenen Informationen reichen, dass die Funktion gerufen werden kann
     */
    public boolean match(String name, LinkedList<Expression> parameters) throws SyntaxException {
        if (getName().equals(name) && parameters.size() == this.parameters.size()) {
            int i = 0;
            boolean noFind = false;
            for (Expression par:parameters) {
                Datatype data = this.parameters.get(i).getDatatype();
                if (par.getDatatype() != null && !par.getDatatype().match(data) && !(data.isClass() && par.getDatatype().isNull())) {
                    noFind = true;
                    break;
                }
                i++;
            }
            
            if (!noFind) return true;
        }
        
        if (parameters.size() <= this.parameters.size()) {
            int i = 0;
            for (Expression par:parameters) {
                if (!(par instanceof ExpressionEmpty)) {
                    Datatype data = this.parameters.get(i).getDatatype();

                    if (par.getDatatype() != null && !par.getDatatype().match(data) && !(data.isClass() && par.getDatatype().isNull())) {
                        return false;
                    }
                } else {
                    if (this.parameters.get(i).getOptional() == null) {
                        return false;
                    }
                }
                i++;
            }
            if (this.parameters.size() >= parameters.size()) {
                LinkedList<Expression> oldParameters = (LinkedList<Expression>)parameters.clone();
                parameters.clear();
                i = 0;
                for (Expression expr: oldParameters) {
                    if (expr instanceof ExpressionEmpty) {
                        parameters.add(this.parameters.get(i).getOptional());
                    } else {
                        parameters.add(expr);
                    }
                    i++;
                }
                for (;i < this.parameters.size();i++) {
                    if (this.parameters.get(i).getOptional() != null) {
                        parameters.add(this.parameters.get(i).getOptional());
                    } else {
                        parameters.clear();
                        parameters.addAll(oldParameters);
                        return false;
                    }
                }
            } else {
                return false;
            }
            return true;
        }
        return false;
    }
    /**
     * Generiert den Namen (anhand den parametern) => name juggling
     */
    public String generateFuncName() {
        String name = synonym;
        if (this.synonymOverload) {
            for (Variable param: parameters) {
                name += "_"+param.getDatatype().toString();
                
            }
        }
        return name;
    }

    /**
     * Gibt die Parameter zurück
     */
    public LinkedList<Variable> getParameter() {
        return parameters;
    }

    

    /**
     * Überlade Synonym
     */
    public void overloadSynonym() {
        this.synonymOverload = true;
    }

    /**
     * definiere
     */
    public void define() {
        this.defined = true;
    }
    /**
     * definiert?
     */
    public boolean isDefined() {
        return defined;
    }
    /**
     * Einfach so aufrufbar
     */
    public void notCallable() {
        callable = false;
    }

    /**
     * Ist es aufrufbar?
     */
    public boolean isCallable() {
        return callable;
    }

    /**
     * wurde es schon kompiliert?
     */
    public boolean isCompiled() {
        return compiled;
    }

    /**
     * kompiliere
     */
    public void compile() {
        this.compiled = true;
    }


    /**
     * Doch nicht kompiliert
     */
    public void notCompiled() {
        this.compiled = false;
    }
    
}
