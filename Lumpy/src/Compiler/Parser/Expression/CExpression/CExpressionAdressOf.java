package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.ExpressionAdressOf;
import Compiler.Parser.Expression.ExpressionIdentifier;
import Compiler.Parser.Parser;
import Compiler.SyntaxException;

/**
 * Ein AdressOf Operator in C
 * @author Coolo
 */
public class CExpressionAdressOf extends ExpressionAdressOf {
    public CExpressionAdressOf(Parser p, ExpressionIdentifier ident) throws SyntaxException {
        super(p,ident);
    }

    @Override
    public String generate() {
        String str = "";
        str += "((int)&("+ident.generate()+"))";
        return str;
    }
}
