package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionThrow;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;

/**
 * Wirft eine C Exception
 * @author Coolo
 */
public class CExpressionThrow extends ExpressionThrow {
    public CExpressionThrow(Parser p, Expression expr) {
        super(p,expr);
    }

    @Override
    public String generate() {
       String str = "";
       str += "//throw: "+expr.generate()+getParser().newLine();
       try {
       String tmpName = expr.getDatatype().getName();
       if (expr.getDatatype().isGC()) tmpName="obj";
       str += "exc_holder_"+tmpName+" = "+expr.generate()+";"+getParser().newLine();
       str += "throwException(TYP_"+expr.getDatatype().getName().toUpperCase()+");"+getParser().newLine();
       //str += "longjmp(*findHolder(TYP_" + expr.getDatatype().getName().toUpperCase() + ") -> buffer, TYP_" + expr.getDatatype().getName().toUpperCase() + ");"+getParser().newLine();
       } catch (SyntaxException ex) {}

       return str;
    }
}
