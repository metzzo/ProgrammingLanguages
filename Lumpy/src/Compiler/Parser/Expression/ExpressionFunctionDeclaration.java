package Compiler.Parser.Expression;

import Compiler.*;
import Compiler.Parser.Parser;

/**
 * Eine Codefunction deklaration
 * @author Coolo
 */
public abstract class ExpressionFunctionDeclaration extends Expression {
    protected CodeFunction func;
    protected ExpressionBlock block;
    

    public ExpressionFunctionDeclaration(Parser p, ExpressionBlock block, CodeFunction func) {
        super(p, new Datatype(Datatype.VOID_DATATYPE,0,null));
        this.block = block;
        this.func = func;
    }

    public CodeFunction getFunction() {
        return func;
    }
}
