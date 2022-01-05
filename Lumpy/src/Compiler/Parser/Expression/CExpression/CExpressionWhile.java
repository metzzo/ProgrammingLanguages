package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionBlock;
import Compiler.Parser.Expression.ExpressionWhile;
import Compiler.Parser.Parser;

/**
 * eine while schleife in c
 * @author Coolo
 */
public class CExpressionWhile extends ExpressionWhile {
    public CExpressionWhile(Parser p,Expression condition,ExpressionBlock block) {
        super(p,condition,block);
    }

    @Override
    public String generate() {
        String str = "";
        str += "while ("+condition.generate()+") ";
        str += block.generate();
        return str;
    }
}
