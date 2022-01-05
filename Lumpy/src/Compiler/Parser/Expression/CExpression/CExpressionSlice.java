package Compiler.Parser.Expression.CExpression;

import Compiler.Datatype;
import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionIdentifier;
import Compiler.Parser.Expression.ExpressionSlice;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;

/**
 * Slicing in C
 * @author Coolo
 */
public class CExpressionSlice extends ExpressionSlice {
    public CExpressionSlice(Parser p, ExpressionIdentifier self, Expression start, Expression end) throws SyntaxException {
        super(p,self,start,end);
    }

    @Override
    public String generate() {
        String str = "";
        String add = "";
        boolean isStr = false;
        try {
            if (self.getDatatype().match(new Datatype(Datatype.STRING_DATATYPE,0,null))) {
                //add ="-> data";
                isStr = true;
            }
        } catch (SyntaxException ex) {
            System.err.println("WTF");
        }
        str += "sliceArray("+self.generate() + add + ",";
        if (start != null && end != null) {
            str += start.generate()+", "+end.generate();
        } else if (start == null && end != null) {
            str += "0, "+end.generate();
        } else if (end == null && start != null) {
            str += start.generate()+", 0";
        } else {
            str += "0, 0";
        }
        try {
            String typ = "";
            if (isStr) {
                typ = "char";
            } else {
                typ = CExpressionAssignment.getArrayDatatype(self.getDatatype());
            }
            str += ",sizeof(" + typ + ")";
        } catch(SyntaxException ex) {}

        if (isStr) {
            str += ", 1";
        } else {
            str += ", 0";
        }

        str += ")";
        return str;
    }
}
