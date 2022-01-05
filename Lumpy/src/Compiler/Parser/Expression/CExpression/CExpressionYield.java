package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionYield;
import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 * Ein yield in c
 * @author Coolo
 */
public class CExpressionYield extends ExpressionYield {
    public CExpressionYield(Parser p, Expression expr) {
        super(p,expr);
    }

    public CExpressionYield(Parser p) {
        super(p);
    }
    
    @Override
    public String generate() {
        String str = "";
        CExpressionBlock.yieldRetCounter++;
        if (isBreak) {
            str += CExpressionBlock.varAcc+" = -1;"+getParser().newLine();
            str += "return 0;"+getParser().newLine();
        } else {
            str += CExpressionBlock.varAcc+" = "+CExpressionBlock.yieldRetCounter+";"+getParser().newLine();
            str += expr.generate()+";"+getParser().newLine();
        }
        
        str += "case "+CExpressionBlock.yieldRetCounter+":"+getParser().newLine();

        
        return str;
    }
}
