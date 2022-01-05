package Compiler.Parser.Expression.CExpression;

import Compiler.Datatype;
import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionAssignment;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;
import Compiler.Variable;

/**
 * EIne Zuweisung in C Code
 * @author Coolo
 */
public class CExpressionAssignment extends ExpressionAssignment {
    public CExpressionAssignment(Parser parser, Variable var,Expression get, Expression expr) throws SyntaxException {
        super(parser,var,get,expr);
    }

    @Override
    public String generate() {
        String str = "";
        str += get.generate();
        str += " = ";
        str += expr.generate();
        return str;
    }

    public static String getDatatype(Variable var) {
        String str = getDatatype(var.getDatatype());
        if (var.isReference()) str = str + "*";
        return str;
    }

    public static String getAccess(Variable var) {
         String str =  "_"+var.getSynonym()+"_";
         if (var.isReference()) str = "(*" + str + ")";
         return str;
    }

    public static String getDatatype(Datatype typ) {
        String name = typ.toString();
        if (typ.isGC()) name = "GCNode*";

        return name;
    }

    public static String getRealDatatype(Datatype typ) {
        String str = typ.toString().replace("[]","*");
        if (str.replace("*","").equals("string")) {
            str = "char*"+str.substring(6);
        }
        return str;
    }

    public static String getArrayDatatype(Datatype typ) {
        String name = typ.toString().replace("[]","");
        if (typ.isClass() || typ.getUnsafeID() == Datatype.STRING_DATATYPE) name = "GCNode*";
        for (int i = 1;i<typ.getDimensions();i++) {
            name += "*";
        }
        return name;
    }
}
