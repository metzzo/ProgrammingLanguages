package Compiler.Parser.Expression;

import Compiler.*;
import Compiler.Class;
import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 * Der abstrakte ExpressionManager. Dieser Verwaltet das erstellen von Expressions, je nach dem
 * welche Sprache ausgewählt ist.
 * @author Coolo
 */
public abstract class ExpressionManager {
    private Parser parser;
    /**
     * Gibt eine neue Block Expression zurück
     * @return
     */
    public abstract ExpressionBlock getBlockExpression(boolean gen);
    /**
     * Gibt eine neues Operator Expression zurück
     * @return
     */
    public abstract ExpressionOperator getOperatorExpression(Operator op, Expression left, Expression right) throws SyntaxException;
    /**
     * Erstellt eine Zahl
     */
    public abstract ExpressionInteger getIntegerExpression(int num);
    /**
     * Erstellt eine Zahl
     */
    public abstract ExpressionFloat getFloatExpression(float num);
    /**
     * Erstellt eine Zahl
     */
    public abstract ExpressionBoolean getBooleanExpression(boolean num);
    /**
     * Erstellt eine Zahl
     */
    public abstract ExpressionString getStringExpression(String num);
    /**
     * Erstellt einen Funktionsaufruf
     */
    public abstract ExpressionFunctionCall getFunctionCallExpression(Function func, LinkedList<Expression> parameters, Class c);
    /**
     * Eine Variabelnzuweisung
     */
    public abstract ExpressionAssignment getAssignmentExpression(Variable var,Expression get, Expression expr) throws SyntaxException;
    /**
     * Ein Variablenzugriff
     */
    public abstract ExpressionVariable getVariableExpression(Variable var) throws SyntaxException;
    /**
     * Erstellt eine leere Expression
     */
    public ExpressionEmpty getEmptyExpression() {
        return new ExpressionEmpty(getParser());
    }
    /**
     * Erstellt einen cast
     */
    public abstract ExpressionCast getCastExpression(Expression expr, Datatype from, Datatype to);
    /**
     * Erstellt eine fallunterscheidung
     */
    public abstract ExpressionIf getIfExpression(Expression fork, ExpressionBlock block,ExpressionBlock elseBlock, LinkedList<ExpressionIf> elseifs);
    /**
     * Erstellt eine Deklaration
     */
    public abstract ExpressionDeclaration getDeclarationExpression(LinkedList<Variable> decVar, LinkedList<Expression> values,boolean s) throws SyntaxException;
    /**
     * Erstellt eine Funktionsdeklaration
     */
    public abstract ExpressionFunctionDeclaration getFunctionDeclarationExpression(ExpressionBlock block, CodeFunction func);
    /**
     * Erstellt ein return
     */
    public abstract ExpressionReturn getReturnExpression(Expression expr);
    /**
     * null Konstante
     */
    public abstract ExpressionNull getNullExpression();
    /**
     * new
     */
    public abstract ExpressionNew getNewExpression(Datatype data) throws SyntaxException;
    /**
     * new
     */
    public abstract ExpressionNew getNewExpression(Datatype data, LinkedList<Expression> expr);
    /**
     * Attay Zugri9ff
     */
    public abstract ExpressionArray getArrayExpression(ExpressionIdentifier var, LinkedList<Expression> arrs) throws SyntaxException;
    /**
     * Zugriffs Expression
     */
    public abstract ExpressionAccess getAccessExpression(ExpressionIdentifier left, ExpressionIdentifier right) throws SyntaxException;
    /**
     * Eine Anonyme Funktion
     * @param data
     * @param func
     * @return
     */
    public abstract ExpressionAnonymousFunc getAnonymousFuncExpression(CodeFunction func);

    /**
     * Ein Anonymer Funktionsaufruf
     * @param func
     * @param name
     * @param expr
     * @return
     */
    public abstract ExpressionAnonymousFuncCall getAnonymousFuncCallExpression(Datatype data, Expression name, LinkedList<Expression> expr);

    /**
     * Methode
     * @param data
     * @param c
     * @param func
     * @return
     */
    public abstract ExpressionMethod getMethodExpression(Datatype data, ExpressionIdentifier name, Class c);

    /**
     * While Schleife
     * @param cond
     * @param block
     * @return
     */
    public abstract ExpressionWhile getWhileExpression(Expression cond, ExpressionBlock block);
    /**
     * for schleife
     */
    public abstract ExpressionFor getForExpression(Expression init, Expression cond, Expression increment, ExpressionBlock block);
    /**
     * Simples for
     * @param init
     * @param cond
     * @param increment
     * @param block
     * @return
     */
    public abstract ExpressionSimpleFor getSimpleForExpression(ExpressionIdentifier var,Expression init, Expression cond,Expression increment, ExpressionBlock block);

    /**
     * yield return
     * @param expr
     * @return
     */
    public abstract ExpressionYield getYieldExpression(Expression expr);

    /**
     * yield break
     * @return
     */
    public abstract ExpressionYield getYieldExpression();

    /**
     * Ein Loop ereignis
     * @param isContinue
     * @return
     */
    public abstract ExpressionLoopEvent getLoopEventExpression(boolean isContinue);

    /**
     * Ein select
     */
    public abstract ExpressionSelect getSelectExpression(Expression start, LinkedList<Expression> conds,LinkedList<ExpressionBlock> blocks,ExpressionBlock def);
    
    /**
     * Each in
     * @param block
     * @param var
     * @param in
     * @return
     */
    public abstract ExpressionEachIn getEachInExpression(Class c,ExpressionBlock block, ExpressionIdentifier var, ExpressionIdentifier in,Expression init);

    /**
     * Property
     * @param prop
     * @param self
     * @param value
     * @return
     */
    public abstract ExpressionProperty getPropertyExpression(Property prop,ExpressionIdentifier self);

    /**
     * Increment/Decrement expression
     */
    public abstract ExpressionIncDec getIncDecExpression(ExpressionIdentifier var, boolean inc);
    /**
     * Ein Try block
     * @param mainBlock
     * @param catches
     * @param datas
     * @param finallyBlock
     * @param variableName
     * @return
     */
    public abstract ExpressionTry getTryExpression(ExpressionBlock mainBlock, LinkedList<ExpressionBlock> catches, LinkedList<Datatype> datas, ExpressionBlock finallyBlock, String variableName);
    /**
     * Wirft eine Exception
     * @param expr
     * @return
     */
    public abstract ExpressionThrow getThrowExpression(Expression expr);

    /**
     * Ein automatisch erzeugtes Array
     */
    public abstract ExpressionAutoArray getAutoArrayExpression(LinkedList<Expression> exprs) throws SyntaxException;

    /**
     * Statischer Zugriff
     */
    public abstract ExpressionStaticAccess getStaticAccessExpression(Class c);

    /**
     * Slice
     */

    public abstract ExpressionSlice getSliceExpression(ExpressionIdentifier self, Expression start, Expression end) throws SyntaxException;
    /**
     * AdressOf
     * @param ident
     * @return
     * @throws SyntaxException
     */
    public abstract ExpressionAdressOf getAdressOfExpression(ExpressionIdentifier ident) throws SyntaxException;
    /**
     * Liefert den Parser zurück
     * @return
     */
    public Parser getParser() {
        return parser;
    }
    /**
     * Setzt den Parser
     * @param p
     */
    public void setParser(Parser p) {
        this.parser = p;
    }
}
