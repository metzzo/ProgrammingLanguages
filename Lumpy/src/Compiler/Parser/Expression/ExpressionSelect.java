package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 * ein select block
 * @author Coolo
 */
public abstract class ExpressionSelect extends Expression {
    protected LinkedList<Expression> conds;
    protected Expression start;
    protected LinkedList<ExpressionBlock> blocks;
    protected ExpressionBlock def;

    /**
     * Konsttuktor eines selects
     * @param p
     * @param start
     * @param conds
     * @param blocks
     */
    public ExpressionSelect(Parser p, Expression start, LinkedList<Expression> conds, LinkedList<ExpressionBlock> blocks,ExpressionBlock def) {
        super(p,new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.start = start;
        this.conds = conds;
        this.blocks = blocks;
        this.def = def;
    }
}
