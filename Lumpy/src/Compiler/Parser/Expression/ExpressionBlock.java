/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import Compiler.Variable;
import java.util.LinkedList;

/**
 * Ein Block aus Expressions.
 * @author Coolo
 */
public abstract class ExpressionBlock extends Expression {
    protected LinkedList<Expression> lines;
    protected LinkedList<Variable> variables;
    protected boolean inGenerator;
    /**
     * Konstruktor für den Block
     */
    public ExpressionBlock(Parser p,boolean gen) {
        super(p, new Datatype(Datatype.VOID_DATATYPE,0,null));
        lines = new LinkedList<Expression>();
        variables = new LinkedList<Variable>();
        this.inGenerator = gen;
    }
    /**
     * Fügt eine Zeile hinzu
     * @param line Die Zeile die hinzugefügt wird
     */
    public void addLine(Expression expr) {
        lines.add(expr);
    }
    /**
     * Neuen Parameter (für stack_enter)
     */
    public void addVariable(Variable var) {
        variables.add(var);
    }
    /**
     * Die Linkedlist mit den zeilen
     */
    public LinkedList<Expression> getLines() {
        return lines;
    }
}
