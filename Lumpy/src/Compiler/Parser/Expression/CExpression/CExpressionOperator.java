package Compiler.Parser.Expression.CExpression;

import Compiler.*;
import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionOperator;
import Compiler.Parser.Parser;

/**
 * Ein Operator in c Code
 * @author Coolo
 */
public class CExpressionOperator extends ExpressionOperator {
    public CExpressionOperator(Parser p, Operator op, Expression left, Expression right) throws SyntaxException {
        super(p,op,left,right);
    }

    @Override
    public String generate() {
        try {
            String str = "";
            if (getLeft().getDatatype().match(new Datatype(Datatype.STRING_DATATYPE,0,null)) || getRight().getDatatype().match(new Datatype(Datatype.STRING_DATATYPE,0,null)) && !getLeft().getDatatype().isNull() && !getRight().getDatatype().isNull()) {
                str += "joinstr(";
                str += getLeft().generate()+", ";
                str += getRight().generate()+")";
            } else {
                str = "(";
                str += getLeft().generate();
                String n = getOperator().getName();
                if (n.equals("and")) n = "&&";
                if (n.equals("or")) n = "||";
                if (n.equals("xor")) n = " /* screw you, i must implement xor */";
                if (n.equals("mod")) n = "%";
                str += " "+n+" ";
                str += getRight().generate();
                str += ")";
            }
            return str;
        } catch (SyntaxException ex) {}
        return "ERROR";
    }
}
