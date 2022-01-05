/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Compiler.Parser.Expression;

import Compiler.*;

import java.util.LinkedList;

/**
 * Dieser Expression Manager generiert Java Code
 * @author Coolo
 */
public class ExpressionManagerJava {//extends ExpressionManager {
    public ExpressionBlock getBlockExpression() {
        return null;//new JavaExpressionBlock(getParser());
    }
    public ExpressionOperator getOperatorExpression(Operator op, Expression left, Expression right) throws SyntaxException {
        return null;//new JavaExpressionOperator(getParser(),op,left,right);
    }
    /**
     * Erstellt eine Zahl Expression in c
     */
    public ExpressionInteger getIntegerExpression(int num) {
        return null;//new JavaExpressionInteger(getParser(),num);
    }
    /**
     * Erstellt eine Zahl Expression in c
     */
    public ExpressionFloat getFloatExpression(float num) {
        return null;//new JavaExpressionFloat(getParser(),num);
    }
    /**
     * Erstellt eine Zahl Expression in c
     */
    public ExpressionString getStringExpression(String num) {
        return null;//new JavaExpressionString(getParser(),num);
    }
    /**
     * Erstellt eine Zahl Expression in c
     */
    public ExpressionBoolean getBooleanExpression(boolean num) {
        return null;//new JavaExpressionBoolean(getParser(),num);
    }
    /**
     * Erstellt einen java cast
     */
    public ExpressionCast getCastExpression(Expression expr, Datatype from, Datatype to) {
        return null;//new JavaExpressionCast(getParser(),expr,from,to);
    }
    /**
     * Erstellt eine java If
     */
    public ExpressionIf getIfExpression(Expression fork, ExpressionBlock block, boolean hasElse,ExpressionBlock elseBlock, LinkedList<ExpressionIf> elseifs) {
        return null;//new JavaExpressionIf(getParser(),fork,block,hasElse,elseBlock, elseifs);
    }
    /**
     * Funktionsaufruf in Java => erstellt
     */
    public ExpressionFunctionCall getFunctionCallExpression(Function func, LinkedList<Expression> parameters) {
        return null;//new JavaExpressionFunctionCall(getParser(), func, parameters);
    }

    public ExpressionDeclaration getDeclarationExpression(LinkedList<Variable> decVar, LinkedList<Expression> values) {
        return null;//new CExpressionDeclaration(getParser(),decVar, values);
    }
    /**
     * Eine Variabelnzuweisung
     */
    public ExpressionAssignment getAssignmentExpression(Variable var, Expression expr) {
        return null;//new CExpressionAssignment(getParser(),var,expr);
    }
    /**
     * Variablenzugriff
     */
    public ExpressionVariable getVariableExpression(Variable var) {
        return null;//new CExpressionVariable(getParser(), var);
    }
}
