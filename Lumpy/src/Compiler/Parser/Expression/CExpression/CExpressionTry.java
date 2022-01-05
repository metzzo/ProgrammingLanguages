package Compiler.Parser.Expression.CExpression;

import Compiler.Datatype;
import Compiler.Parser.Expression.ExpressionBlock;
import Compiler.Parser.Expression.ExpressionTry;
import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 * Ein Try Block in C
 * @author Coolo
 */
public class CExpressionTry extends ExpressionTry {
    public static int TRYCOUNT = 0;
    public static int currentTry = -1;
    public static CExpressionTry currentExprTry;
    private int id;
    public CExpressionTry(Parser p, ExpressionBlock mainBlock, LinkedList<ExpressionBlock> catches, LinkedList<Datatype> datas, ExpressionBlock finallyBlock, String variableName) {
        super(p,mainBlock,catches,datas, finallyBlock,variableName);
        id = TRYCOUNT++;
    }
    public ExpressionBlock getFinallyBlock() {
        return finallyBlock;
    }
    @Override
    public String generate() {
        CExpressionTry tmpTry = currentExprTry;
        currentExprTry = this;
        String str = "";
        str += "//begin try: "+name+getParser().newLine();
        str += "int jmp_env_"+id+" = setjmp(exc_env_"+id+");"+getParser().newLine();
        getParser().identUp();
        str += "if (jmp_env_"+id+") {"+getParser().newLine();
        //exception raised
        int i = 0;
        String defaultException = "";
        for (Datatype data: datas) {
            if (data.isVoid()) {
                defaultException += catches.get(i).generate();
            } else {
                getParser().identUp();
                str += "if (jmp_env_"+id+" == TYP_"+data.getName().toUpperCase()+") {" + getParser().newLine() ;
                String tmpName = data.getName();
                if (data.isGC()) tmpName="obj";
                str += CExpressionAssignment.getDatatype(data)+" _"+this.name+"_ = exc_holder_" +tmpName+";"+getParser().newLine();

                str += catches.get(i).generate();


                getParser().identDown();
                str += getParser().newLine();
                str += "} else ";
            }
            i++;
        }
        if (defaultException.equals("")) {
            str += "{}";
        } else {
            str += defaultException;
        }
        getParser().identDown();
        str += getParser().newLine();
        str += "} else {";
        getParser().identUp();
        str += getParser().newLine();
        int excCount = 0;
        String possibleExceptions = "";
        boolean start = false;
        for (Datatype data: datas) {
            String name = "TYP_"+data.getName().toUpperCase();
            if (data.isVoid()) name = "-1";
            if (start) possibleExceptions +=", ";
            possibleExceptions += name;
            excCount ++;
            start = true;
        }
        str += "stack_enter(0, newException(&exc_env_"+id+", "+excCount+", "+possibleExceptions+"));"+getParser().newLine();
        int tmp = currentTry;
        currentTry = id;
        str += mainBlock.generate();
        currentTry = tmp;
        str += getParser().newLine();
        str += "stack_leave();"+getParser().newLine();
        getParser().identDown();
        str += getParser().newLine();
        str += "}"+getParser().newLine();
        str += "//end try"+getParser().newLine();
        if (finallyBlock != null) {
            str += "//finally:"+getParser().newLine();
            str += finallyBlock.generate();
        }
        currentExprTry = tmpTry;
        return str;
    }
}
