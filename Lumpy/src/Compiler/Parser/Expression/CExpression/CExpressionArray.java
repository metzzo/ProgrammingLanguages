package Compiler.Parser.Expression.CExpression;

import Compiler.Datatype;
import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionArray;
import Compiler.Parser.Expression.ExpressionIdentifier;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import java.util.LinkedList;

/**
 * Ein Arrayzugriff in C
 * @author coolo
 */
public class CExpressionArray extends ExpressionArray {
    public CExpressionArray(Parser p, ExpressionIdentifier var, LinkedList<Expression> arr) throws SyntaxException {
        super(p,var,arr);
    }

    @Override
    public String generate() {
        try {
            String str = "";
            Datatype d;
            if (arrs.size() == var.getVariable().getDatatype().getDimensions()) {
                d = new Datatype(var.getDatatype(),arrs.size(),null);
            } else {
                d = new Datatype(Datatype.STRING_DATATYPE,arrs.size(),null);
            }
            //str += "("+dataStr+"("+var.generate()+" -> data))";
            str += var.generate();
            int i = 1;
            for (Expression e: arrs) {
                if ( i == arrs.size()) {
                    str = "(("+ CExpressionAssignment.getArrayDatatype(new Datatype(d,1,null))+"*)" + str + "-> data)";
                } else {
                    str = "((GCNode**)" + str + "-> data)";
                }
                str += "["+e.generate()+"]";

                i++;
            }
            return str;
        } catch (SyntaxException ex) {}
        return "ERROR";
    }
}
