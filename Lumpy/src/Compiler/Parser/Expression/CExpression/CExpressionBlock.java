package Compiler.Parser.Expression.CExpression;

import Compiler.Parser.Expression.Expression;
import Compiler.Parser.Expression.ExpressionBlock;
import Compiler.Parser.Expression.ExpressionDeclaration;
import Compiler.Parser.Parser;
import Compiler.Variable;
import Compiler.Class;

/**
 * Ein Block aus do - end. in C Code
 * @author Coolo
 */
public class CExpressionBlock extends ExpressionBlock {
    public static int varCount = 0;
    public static int yieldRetCounter = 0;
    public static String varAcc = "";
    private Class c = null;
    public CExpressionBlock(Parser p,boolean gen) {
        super(p,gen);
        c = p.getCurrentClass();
    }


    @Override
    public String generate() {
        int tmp = CExpressionBlock.varCount;
        int decTmp = CExpressionDeclaration.decVar;
        getParser().identUp();
        String str = getParser().newLine();
        varCount = 0;
        for (Variable var: variables) {
            if (var.isUsed() && (var.getDatatype().isGC())) {
                if (!inGenerator) {
                    varCount ++;
                    str += "stack_create(&"+CExpressionAssignment.getAccess(var)+", "+CExpressionDeclaration.decVar+");"+getParser().newLine();
                    CExpressionDeclaration.decVar++;
                }
            }
        }
        
        
        int tmpC = yieldRetCounter;
        String tmpV = varAcc;
        if (inGenerator) {
            yieldRetCounter = 0;
            getParser().identUp();
            String v = "";
            if (CExpressionFunctionDeclaration.currentFunction != null && CExpressionFunctionDeclaration.currentFunction.isStatic()) {
                v = "__static__"+c.toString()+"__status_";
            } else {
                v = "(("+c.toString()+"*)_this_ -> data) -> _status_";
            }
            
            str += "switch ("+v+") {"+getParser().newLine();
            str += "case 0:"+getParser().newLine();
            varAcc = v;
        }

        for (Expression expr: this.getLines()) {
            if (expr.getLine() != -1) str += "//Line: "+expr.getLine()+getParser().newLine();
            if (expr instanceof ExpressionDeclaration) {
                for (Variable var: ((ExpressionDeclaration)expr).getDecVar()) {
                    if (var.isUsed() && !inGenerator) {
                        varCount ++;
                    }
                }
            }
            str += expr.generate()+";"+getParser().newLine();
        }

        if (inGenerator) {
            getParser().identDown();
            str += getParser().newLine();
            str += "}"+getParser().newLine();
            str += varAcc + " = -1;"+getParser().newLine();
            yieldRetCounter = tmpC;
            varAcc = tmpV;
            varCount = 0;
        }
        

        if (varCount > 0) {
            str = "{"+getParser().newLine()+"stack_enter("+varCount+", NULL);"+getParser().newLine()+str;
            str += "stack_leave();"+getParser().newLine();
        } else str = "{" + str;
        getParser().identDown();
        str += getParser().newLine();
        
        str += "}"+getParser().newLine();
        CExpressionBlock.varCount = tmp;
        CExpressionDeclaration.decVar = decTmp;
        return str;
    }
}
