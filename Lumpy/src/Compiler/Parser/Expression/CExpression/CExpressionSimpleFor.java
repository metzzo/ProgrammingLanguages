package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionBlock;
import Compiler.Parser.Expression.ExpressionIdentifier;
import Compiler.Parser.Expression.ExpressionSimpleFor;
import Compiler.Parser.Parser;

/**
 * Ein simples For in c
 * @author Coolo
 */
public class CExpressionSimpleFor extends ExpressionSimpleFor {
    public CExpressionSimpleFor(Parser p,ExpressionIdentifier var, Expression init, Expression cond, Expression increment,ExpressionBlock block) {
        super(p,var,init,cond,increment,block);
    }

    @Override
    public String generate() {
        getParser().identUp();
        String str = "{"+getParser().newLine();
        String tmp = init.generate();
        str += tmp+";"+getParser().newLine();

        String v = var.generate().substring(0,var.generate().indexOf("="));
        getParser().identUp();
        str += "while(1) {"+getParser().newLine();
        str += "int tmp_inc__ = "+increment.generate()+";"+getParser().newLine();
        str += "if (tmp_inc__ < 0) { if ("+v+" < "+cond.generate()+") break; }"+getParser().newLine();
        str += "if (tmp_inc__ > 0) { if ("+v+" > "+cond.generate()+") break; }"+getParser().newLine();
        str += block.generate()+getParser().newLine();
        getParser().identDown();
        str += v+" = "+v+" + "+increment.generate()+";"+getParser().newLine();
        getParser().identDown();
        str += "}"+getParser().newLine();
        str += "}";
        return str;
    }
}
