package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionBlock;
import Compiler.Parser.Expression.ExpressionEachIn;
import Compiler.Parser.Expression.ExpressionIdentifier;
import Compiler.Class;
import Compiler.Datatype;
import Compiler.Function;
import Compiler.Parser.Parser;

/**
 * Eine EachIn Schleife in C
 * @author Coolo
 */
public class CExpressionEachIn extends ExpressionEachIn {
    /**
     * Konstuktor
     * @param p
     * @param block
     * @param var
     * @param in
     */
    public CExpressionEachIn(Parser p,Class c,ExpressionBlock block, ExpressionIdentifier var, ExpressionIdentifier in,Expression init) {
        super(p,c,block,var,in,init);
    }

    @Override
    public String generate() {
        Function hasNextFunc = null, invokeFunc = null,startFunc = null;
        for (Function func: c.getMethods()) {
            if (func.getName().equals("invoke") && func.getParameter().size() == 0) {
                invokeFunc = func;
            }
            if (func.getName().equals("hasnext") && func.getParameter().size() == 0 && func.getDatatype().match(new Datatype(Datatype.BOOLEAN_DATATYPE,0,null))) {
                hasNextFunc = func;
            }
            if (func.getName().equals("start") && func.getParameter().size() == 0) {
                startFunc = func;
            }
        }
        String str = "{";
        getParser().identUp();
        str += getParser().newLine();
        str += init.generate()+";"+getParser().newLine();
        String name = "tmp_it_"+this.in.getVariable().getName();
        str += "GCNode* "+name+" = " + in.generate() + ";"+getParser().newLine();
        str += startFunc.generateFuncName()+"("+name+");"+getParser().newLine();
        String inv = var.generate()+" = "+invokeFunc.generateFuncName()+"("+name+");"+getParser().newLine();

        getParser().identUp();
        str += inv;
        str += "while ("+hasNextFunc.generateFuncName()+"("+name+")) {"+getParser().newLine();
        str += block.generate();
        getParser().identDown();
        str += getParser().newLine();
        str += inv;
        getParser().identDown();
        str += "}"+getParser().newLine();
        str += "}"+getParser().newLine();

        return str;
    }
}
