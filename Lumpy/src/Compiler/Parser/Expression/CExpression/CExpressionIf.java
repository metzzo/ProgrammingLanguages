package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionBlock;
import Compiler.Parser.Expression.ExpressionIf;
import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 *
 * @author Coolo
 */
public class CExpressionIf extends ExpressionIf {
    public CExpressionIf(Parser p, Expression fork, ExpressionBlock block,ExpressionBlock elseBlock, LinkedList<ExpressionIf> elseifs) {
        super(p,fork,block,elseBlock, elseifs);
    }

    public String generate() {
        String str = "";
        str += "if ("+getFork().generate()+") ";
        str += getBlock().generate();

        if (getElseIfs().size()>0) {
            for (ExpressionIf exprIf: getElseIfs()) {
                str += " else "+exprIf.generate();
            }
        }

        if (getElseBlock() != null) {
            str += " else ";
            str += getElseBlock().generate();
        }
        return str;
    }
}
