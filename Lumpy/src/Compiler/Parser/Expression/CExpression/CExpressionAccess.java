package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.ExpressionAccess;
import Compiler.Parser.Expression.ExpressionFunctionCall;
import Compiler.Parser.Expression.ExpressionIdentifier;
import Compiler.Parser.Expression.ExpressionStaticAccess;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;

/**
 * Ein Instanzzugriff in C
 * @author Coolo
 */
public class CExpressionAccess extends ExpressionAccess {
    public CExpressionAccess(Parser p, ExpressionIdentifier left, ExpressionIdentifier right) throws SyntaxException {
        super(p,left,right);
    }

    @Override
    public String generate() {
        try {
            if (left == null) {
                return right.generate();
            } else {
                if (right instanceof ExpressionFunctionCall) {
                    ExpressionFunctionCall call = (ExpressionFunctionCall)right;
                    if (call.getParameter().size()==0 || call.getParameter().getFirst() != left) call.getParameter().addFirst(left);
                    return right.generate();
                } else if (left instanceof ExpressionStaticAccess) {
                    return left.generate()+"_" + right.generate();
                } else {
                    String datatype = CExpressionAssignment.getRealDatatype(left.getDatatype());
                    if (left.getDatatype().isClass()) datatype += "*";
                    return "((("+datatype+")"+left.generate()+" -> data) -> "+right.generate()+")";
                }
            }
        } catch(SyntaxException ex) {}
        return "ERROR";
    }
}
