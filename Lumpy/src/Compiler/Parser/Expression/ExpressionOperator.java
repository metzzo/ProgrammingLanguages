package Compiler.Parser.Expression;

import Compiler.Datatype;
import Compiler.Operator;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;

/**
 * Ein Operator Knoten.
 * @author Coolo
 */
public abstract class ExpressionOperator extends Expression {
    private Operator op;
    private Expression left, right;
    public ExpressionOperator(Parser p, Operator op, Expression left, Expression right) throws SyntaxException {
        super(p, left.getDatatype());
        if (op.getReturn() != -1) {
            this.setDatatype(new Datatype(op.getReturn(),0,null));
        }
        this.op = op;
        this.left = left;
        this.right = right;

        if (left.getDatatype().getDimensions() == 0) {
            if (op.getName().equals("==") || op.getName().equals("!=")) {
                return;
            }
            if (!left.getDatatype().match(right.getDatatype())) {
                p.error(left.getDatatype().generateErrorMsg(right.getDatatype()));
            }
            for (int data: op.getPossibleDatatypes()) {
                if (new Datatype(data,0,null).match(left.getDatatype())) return;
            }
        }
        p.error("Operator '"+op.getName()+"' got wrong datatype '"+left.getDatatype()+"'");
    }
    /**
     * Der Operator
     * @return
     */
    public Operator getOperator() {
        return op;
    }
    /**
     * Linker Operand
     * @return
     */
    public Expression getLeft() {
        return left;
    }
    /**
     * Rechter Operand
     * @return
     */
    public Expression getRight() {
        return right;
    }
}
