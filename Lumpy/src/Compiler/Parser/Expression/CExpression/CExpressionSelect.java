package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionBlock;
import Compiler.Parser.Expression.ExpressionSelect;
import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 * Ein C select
 * @author Coolo
 */
public class CExpressionSelect extends ExpressionSelect {
    /**
     * Konsttuktor
     * @param p
     * @param start
     * @param conds
     * @param blocks
     */
    public CExpressionSelect(Parser p, Expression start, LinkedList<Expression> conds, LinkedList<ExpressionBlock> blocks,ExpressionBlock def) {
        super(p,start,conds,blocks,def);
    }

    @Override
    public String generate() {
        String str = "";
        getParser().identUp();
        str += "switch ("+start.generate()+") {"+getParser().newLine();
        int i = 0;
        for (Expression expr:conds) {
            getParser().identUp();
            str += "case "+expr.generate()+":"+getParser().newLine();
            str += blocks.get(i).generate();
            str += getParser().newLine();
            str += "break;"+getParser().newLine();
            getParser().identDown();
            str += getParser().newLine();
            i++;
        }
        if (def != null) {
            getParser().identUp();
            str += "default:"+getParser().newLine();
            str += def.generate();
            str += getParser().newLine();
            str += "break;"+getParser().newLine();
            getParser().identDown();
        }
        getParser().identDown();
        str += getParser().newLine();
        str += "}";
        str += getParser().newLine();


        return str;
    }
}
