package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionDeclaration;
import Compiler.Parser.Expression.ExpressionEmpty;
import Compiler.Parser.Parser;
import Compiler.Class;
import Compiler.SyntaxException;
import Compiler.Variable;
import java.util.LinkedList;

/**
 *
 * @author Coolo
 */
public class CExpressionDeclaration extends ExpressionDeclaration {
    public static int decVar = 0;
    private Class c;
    public CExpressionDeclaration(Parser parser, LinkedList<Variable> decVar, LinkedList<Expression> values, boolean s) throws SyntaxException {
        super(parser,decVar,values,s);
        c = parser.getCurrentClass();
    }

    @Override
    public String generate() {

        String str = "";
        int i = 0;
        while (i<getDecVar().size()) {
            Variable var = getDecVar().get(i);
            if ((var.isUsed() || !(getValues().get(i) instanceof ExpressionEmpty))) {
                Expression expr = getValues().get(i);
                if (!onlySet || (c != null && c.getTyp() == Class.IS_EXTENSION)) {
                    str += CExpressionAssignment.getDatatype(var.getDatatype())+" ";
                } else if (c != null) {
                    String datatype = c.toString()+"*";
                    if (var.isStatic()) {
                        str += "__static__"+c.getName()+"_";
                    } else {
                        str += "(("+datatype+")_this_ -> data) ->";
                    }
                }
                str += CExpressionAssignment.getAccess(var);
                if (!(expr instanceof ExpressionEmpty) && expr != null) {
                    str += " = "+expr.generate();
                } else {
                    str += " = "+var.getDatatype().createDatatypeExpression(getParser().getManager()).generate();
                }
                str+=";"+getParser().newLine();
                if (var.getDatatype().isGC() && !inGenerator) {
                    str += "stack_create(&"+CExpressionAssignment.getAccess(var)+", "+decVar+");"+getParser().newLine();
                    decVar++;
                    
                }
                
            }
            i++;
        }
        return str;
    }
}
