package Compiler.Parser.Expression;

import Compiler.Parser.Parser;
import Compiler.SyntaxException;

/**
 * Adress Of, liefert eine eindeutige Adresse einer gegebenen Variable
 * @author Coolo
 */
public abstract class ExpressionAdressOf extends Expression {
    protected ExpressionIdentifier ident;

    public ExpressionAdressOf(Parser p, ExpressionIdentifier ident) throws SyntaxException {
        super(p,ident.getDatatype());

        this.ident = ident;
    }
}
