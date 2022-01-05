package Compiler.Parser.Expression.CExpression;

import Compiler.*;
import Compiler.Class;
import Compiler.Parser.Expression.ExpressionBlock;
import Compiler.Parser.Expression.ExpressionFunctionDeclaration;
import Compiler.Parser.Parser;
import java.util.*;

/**
 * Eine Codefunction deklaration
 * @author Coolo
 */
public class CExpressionFunctionDeclaration extends ExpressionFunctionDeclaration {
    public static Function currentFunction;
    public CExpressionFunctionDeclaration(Parser p, ExpressionBlock block, CodeFunction func) {
        super(p,block,func);
    }

    @Override
    public String generate() {
        String str = CExpressionAssignment.getDatatype(func.getDatatype())+" "+func.generateFuncName()+"(";
        boolean start = false;
        boolean containsThis = false;
        if (func.getScope().getOwnerClass() != null && !func.isStatic()) {
            str += CExpressionAssignment.getDatatype(new Datatype(Datatype.Name2Int(func.getScope().getOwnerClass().getName()),0,null)) + " _this_";
            containsThis = true;
            if (!new Datatype(Datatype.Name2Int(func.getScope().getOwnerClass().getName()),0,null).isGC()) containsThis = false;
            start = true;
        }
        for (Variable par: func.getParameter()) {
            if (start) str += ", ";
            String ptr = "";
            if (par.isReference()) ptr="*";
            str += CExpressionAssignment.getDatatype(par.getDatatype())+ptr+" _"+par.getSynonym()+"_";
            start = true;
        }
        str += ") ";
        //schauen, ob dies eine methode ist
        if (getFunction().getScope().getOwnerClass() != null && getFunction().getScope().getOwnerClass().getTyp() == Class.IS_CLASS) {
            Class myc = getFunction().getScope().getOwnerClass();
            getParser().identUp();
            str +="{"+getParser().newLine();
            getParser().identUp();
            str += "if (_this_ == NULL) {"+getParser().newLine();
            str += "exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );"+getParser().newLine();
            getParser().identDown();
            str += "throwException(TYP_NULLPOINTEREXCEPTION);"+getParser().newLine();
            str += "}"+getParser().newLine();
            str += "GCNode* _super_ = NULL;"+getParser().newLine();
            str += "int tmpid = _this_ -> typid;"+getParser().newLine();

            if (myc.getInherit() != null) {
                str += "_super_ = _this_;//(("+getFunction().getScope().getOwnerClass().getName()+"*)_this_ -> data) -> superclass;"+getParser().newLine();
            }
            str += "_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten..."+getParser().newLine();
            getParser().identUp();
            str += "switch (tmpid) {"+getParser().newLine();
            //Alle überladenen funktionen suchen
            LinkedList<Function> functions = new LinkedList<Function>(myc.getMethods());
            Stack<Class> classes = new Stack<Class>();
            for (Class c: myc.getInheriting()) classes.add(c);
            while (!classes.isEmpty()) {
                Class c = classes.pop();
                functions.addAll(c.getMethods());
                for (Class tmp: c.getInheriting()) classes.add(tmp);
            }
            LinkedHashSet<Function> tmp = new LinkedHashSet<Function>();
            tmp.addAll(functions);
            for (Function func: tmp) {
                if (((CodeFunction)func).isDuckType()) continue;
                if (func.getName().equals(getFunction().getName()) && func.getParameter().size() == getFunction().getParameter().size()) {
                    boolean equ = true;
                    int i = 0;
                    for (Variable param: func.getParameter()) {
                        if (!param.getDatatype().match(getFunction().getParameter().get(i).getDatatype())) {
                            equ = false;
                            break;
                        }
                        i++;
                    }
                    if (equ) {
                        CodeFunction f = (CodeFunction)func;
                        getParser().identUp();
                        str += "case TYP_"+f.getScope().getOwnerClass().getName().toUpperCase()+": "+getParser().newLine();
                        if (f.getBlock() != null) str += f.getBlock().generate();
                        str += getParser().newLine();
                        str += "break;";
                        getParser().identDown();
                        str += getParser().newLine();
                    }
                }
            }
            getParser().identUp();
            str += "default:"+getParser().newLine();
            str += block.generate()+getParser().newLine();
            getParser().identDown();
            getParser().identDown();
            str += getParser().newLine();
            str += "}"+getParser().newLine();
            str += "return;"+getParser().newLine();
            getParser().identDown();
            str += getParser().newLine();
            str+= "}"+getParser().newLine();
        } else {
            Function tmp = currentFunction;
            currentFunction = getFunction();
            if (containsThis) {
                getParser().identUp();
                str += "{"+getParser().newLine();
                getParser().identUp();
                str += "if (_this_ == NULL) {"+getParser().newLine();
                str += "exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );"+getParser().newLine();
                getParser().identDown();
                str += "throwException(TYP_NULLPOINTEREXCEPTION);"+getParser().newLine();
                str += "}"+getParser().newLine();
                
            }
            str += block.generate()+getParser().newLine();
            currentFunction = tmp;
            if (containsThis) {
                getParser().identDown();
                str += getParser().newLine();
                str += "}";
                str += getParser().newLine();
            }
        }
        return str;
    }
}
