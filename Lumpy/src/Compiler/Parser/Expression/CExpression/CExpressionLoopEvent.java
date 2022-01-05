package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.ExpressionLoopEvent;
import Compiler.Parser.Parser;

/**
 * exit/continue in c
 * @author Coolo
 */
public class CExpressionLoopEvent extends ExpressionLoopEvent {
    public CExpressionLoopEvent(Parser p,boolean isContinue) {
        super(p,isContinue);
    }

    @Override
    public String generate() {
        String str = "";
        if (isContinue) {
            str += "continue;"+getParser().newLine();
        } else {
            str += "break;"+getParser().newLine();
        }
        return str;
    }
}
