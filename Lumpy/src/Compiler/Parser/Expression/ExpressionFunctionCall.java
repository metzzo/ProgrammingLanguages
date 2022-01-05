package Compiler.Parser.Expression;

import Compiler.*;
import Compiler.Class;
import Compiler.Parser.Parser;
import java.util.*;

/**
 * Ein Funktionsaufruf.
 * @author Coolo
 */
public abstract class ExpressionFunctionCall extends ExpressionIdentifier {
    private Function func;
    private LinkedList<Expression> parameters;
    private Class c;
    /**
     * Konstruktor
     * @param parser der parser
     * @param func die funktion
     * @param parameters die parameter
     */
    public ExpressionFunctionCall(Parser parser, Function func, LinkedList<Expression> parameters, Class c) {
        super(parser, func.getDatatype());
        if (func.getDatatype() == null) setDatatype(new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.func = func;
        this.parameters = parameters;
        this.c = c;
        func.use();
    }
    /**
     * Gibt die Parameter zurück
     */
    public LinkedList<Expression> getParameter() {
        return parameters;
    }
    /**
     * Die funktion
     */
    public Function getFunction() {
        return func;
    }
    public Datatype getDatatype() {
        return func.getDatatype();
    }
    /**
     * Die zugehöroge Klasse, falls Methoden aufruf
     */
    public Class getCallerClass() {
        return c;
    }
    /**
     * Variable
     */
    @Override
    public Variable getVariable() {
        return func;
    }
}
