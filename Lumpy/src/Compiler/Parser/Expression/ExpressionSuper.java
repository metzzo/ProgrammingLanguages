package Compiler.Parser.Expression;

import Compiler.Class;
import Compiler.Parser.Parser;

/**
 * Der "Super" Zugriffsidentifier (
 * @author Coolo
 */
public abstract class ExpressionSuper extends Expression {
    public ExpressionSuper(Parser p, Class c) {
        super(p, c);
    }
}
