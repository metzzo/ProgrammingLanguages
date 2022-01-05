package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 * Fallunterscheidung
 * @author Coolo
 */
public abstract class ExpressionIf extends Expression {
    private Expression fork; //die bedingung
    private ExpressionBlock block, elseBlock; //was es tun muss
    private LinkedList<ExpressionIf> elseifs;

    /**
     * Konstruktpr
     * @param p parser
     * @param fork bedingung
     * @param block block
     * @param elseifs die elseifs
     */
    public ExpressionIf(Parser p, Expression fork, ExpressionBlock block, ExpressionBlock elseBlock, LinkedList<ExpressionIf> elseifs) {
        super(p, new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.fork = fork;
        this.block = block;
        this.elseBlock = elseBlock;
        this.elseifs = elseifs;
    }
    /**
     * Die Bedingung
     * @return
     */
    public Expression getFork() {
        return fork;
    }
    /**
     * Der Block
     * @return
     */
    public ExpressionBlock getBlock() {
        return block;
    }
    /**
     * die else expression
     * @return
     */
    public ExpressionBlock getElseBlock() {
        return elseBlock;
    }
    /**
     * die elseifs
     * @return
     */
    public LinkedList<ExpressionIf> getElseIfs() {
        return elseifs;
    }
}
