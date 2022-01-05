package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 * ein Try Catch Block
 * @author Coolo
 */
public abstract class ExpressionTry extends Expression {
    protected ExpressionBlock mainBlock, finallyBlock;
    protected String name;
    protected LinkedList<ExpressionBlock> catches;
    protected LinkedList<Datatype> datas;
    /**
     * Konstruktor
     * @param p
     * @param mainBlock
     * @param catches
     * @param datas
     * @param finallyBlock
     * @param variableName
     */
    public ExpressionTry(Parser p, ExpressionBlock mainBlock, LinkedList<ExpressionBlock> catches, LinkedList<Datatype> datas, ExpressionBlock finallyBlock, String variableName) {
        super(p,new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.mainBlock = mainBlock;
        this.finallyBlock = finallyBlock;
        this.name = variableName;
        this.catches = catches;
        this.datas = datas;
    }
}
