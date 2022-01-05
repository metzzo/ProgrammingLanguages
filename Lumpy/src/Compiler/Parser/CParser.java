package Compiler.Parser;

import Compiler.Lexer.Lexer;
import Compiler.*;
import Compiler.Class;
import Compiler.Parser.Expression.*;
import Compiler.Parser.Expression.CExpression.CExpressionAssignment;
import Compiler.Parser.Expression.CExpression.CExpressionAutoArray;
import Compiler.Parser.Expression.CExpression.CExpressionNew;
import Compiler.Parser.Expression.CExpression.CExpressionTry;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;
import lumpy.Main;

/**
 * Parst und generiert C Code
 * @author Coolo
 */
public class CParser extends Parser {
    private static String initStatics = "";
    private String headerCode = "";
    private String functionCode = "";
    private String importCode = "";
    private String template;
    private Import myImport;
    private LinkedList<CExpressionAutoArray> autoArrs = new LinkedList<CExpressionAutoArray>();
    
    public CParser(Lexer analyser, ExpressionManager man, String filePath) throws SyntaxException {
        super(analyser,man,filePath);
    }
    public void generate(String template, boolean isMain) {
        for (Import imp: Main.imports) {
            if (this.getPath().equals(imp.getPath())) {
                myImport = imp;
                break;
            }
        }
        if (myImport != null) {
            headerCode += "#ifndef FILE_" + myImport.getID()+"\n";
            headerCode += "#define FILE_"+myImport.getID()+"\n";
        }
        for (Import imp: Main.imports) {
            if (imp.getPath().endsWith("h"))
                importCode += "#include \""+imp.getPath()+"\""+newLine();
        }
        for (Import imp: Main.imports) {
            if (imp.getParser() != null)
                importCode += "#include \"file"+imp.getID()+".h\""+newLine();
        }
        //}
        String mainCode = "";
        mainCode = template.substring(template.indexOf("$MAIN_CODE"), template.indexOf("$ENDMAIN_CODE")+"$ENDMAIN_CODE".length());
        
        if (SyntaxException.wasError) return;
        headerCode += "#ifndef boolean"+newLine();
        headerCode += "#define boolean char"+newLine();
        headerCode += "#endif"+newLine();
        //klassen definieren
        for (Class c: getClasses()) {
            if (c.getTyp() == Class.IS_CLASS) {
                String staticMem = "";
                headerCode += "#define TYP_"+c.getName().toUpperCase()+" "+c.getUnsafeID()+newLine();
                identUp();
                headerCode += "typedef struct __"+c.getName()+"__ {"+newLine();
                if (c.getInherit() != null) {
                    headerCode +="//Inherit from: "+c.getInherit().getName()+newLine();
                }
                headerCode += "int typid;"+newLine();
                headerCode += "int superclass;"+newLine();
                for (Variable attribute: c.getAttibutes()) {
                    if (attribute.isUsed()) {
                        if (!attribute.isStatic()) {
                            headerCode += CExpressionAssignment.getDatatype(attribute.getDatatype())+" _"+attribute.getName()+"_;"+newLine();
                        } else {
                            identDown();
                            staticMem += CExpressionAssignment.getDatatype(attribute.getDatatype())+" __static__"+c.getName()+"__"+attribute.getName()+"_;"+newLine();
                            identUp();
                        }
                    }
                }

                identDown();

                headerCode += newLine();
                headerCode += "} "+c.getName()+";"+newLine();
                headerCode += staticMem;

                headerCode += "GCNode* cast2"+c.getName()+"(GCNode* node);"+newLine();
                
                identUp();
                functionCode += "GCNode* cast2"+c.getName()+"(GCNode* node) {"+newLine();
                functionCode += "";
                functionCode +=  "node -> typid = TYP_"+c.getName().toUpperCase()+";"+newLine();
                functionCode += "return node;"+newLine();
                identDown();
                functionCode += newLine();
                functionCode += "}"+newLine();

                identUp();


                functionCode +="GCNode* new_"+c.getName()+"() {"+newLine();

                functionCode += "GCNode* obj = gc_malloc(sizeof("+c.getName()+"), &standardTrace);"+newLine();
                functionCode += "(("+c.getName()+"*)obj -> data) -> typid = TYP_"+c.getName().toUpperCase()+";"+newLine();
                if (c.getInherit() != null) functionCode += "(("+c.getName()+"*)obj -> data) -> superclass = TYP_"+c.getInherit().getName().toUpperCase()+";"+newLine();
                functionCode += "obj -> typid = TYP_"+c.getName().toUpperCase()+";"+newLine();

                Class tmpC = c;

                while (tmpC != null) {
                    for (ExpressionDeclaration dec: tmpC.getStartDecs()) {
                        int i = 0;
                        for (Variable att: dec.getDecVar()) {
                            String init = "";
                            if (dec.getValues().get(i) instanceof ExpressionEmpty && att.isUsed()) {
                                init = att.getDatatype().createDatatypeExpression(getManager()).generate();
                            } else {
                                init = dec.getValues().get(i).generate();
                            }
                            if (att.isStatic()) {
                                initStatics += "__static__"+c.getName()+"__"+att.getName()+"_ = "+init+";"+newLine();
                            } else {
                                if (att.isUsed()) functionCode += "(("+c.getName()+"*)obj -> data) -> "+CExpressionAssignment.getAccess(att)+" = " + init+ ";"+newLine();
                            }
                            i++;
                        }
                    }
                    tmpC = tmpC.getInherit();
                }
                functionCode += "return obj;"+newLine();

                identDown();
                functionCode += newLine();

                functionCode += "}"+newLine();

                headerCode += "GCNode* new_"+c.getName()+"();"+newLine();
            } else if (c.getTyp() == Class.IS_STRUCT) {
                //sehr einfacher konstruktor
                headerCode   += "GCNode* new_"+c.getName()+"();"+newLine();
                identUp();
                functionCode += "GCNode* new_"+c.getName()+"() {"+newLine();
                identDown();
                functionCode += "return gc_malloc(sizeof("+c.getName()+"), &standardTrace);"+newLine();
                functionCode += "}"+newLine();
            }
        }

        Scope scope = getHyperScope();
         //funktionheaders machen
        for (Function func:scope.getFunctions()) {
            if (func.isUsed() && (!func.isDefined() || !isMain)) { // && ((func instanceof CodeFunction && ((CodeFunction)func).getScope().getParser() != this) || !(func instanceof CodeFunction))) {
                func.define();
                if (func instanceof CodeFunction) {
                    for (ExpressionFunctionDeclaration expr: getFunctionDeclaration()) {
                        if (expr.getFunction() == func && expr.getFunction().getScope().getParser() == this && expr.getFunction().isDefined()) {
                            functionCode += expr.generate();
                            break;
                        }
                    }
                    CodeFunction cfunc = (CodeFunction)func;
                    if (cfunc.getTyp() == CodeFunction.IS_ANONYME) {
                        //anonyme => erzeuge alias
                        LinkedList<Datatype> pars = new LinkedList<Datatype>();
                        for (Variable par: cfunc.getParameter()) {
                            pars.add(par.getDatatype());
                        }
                        Datatype tmp = new Datatype(cfunc.getDatatype(),cfunc.getDatatype().getDimensions(),pars);
                        String tmpStr = "";
                        tmpStr += "#ifndef _"+tmp.toString()+"_"+newLine();
                        tmpStr += "#define _"+tmp.toString()+"_"+newLine();
                        tmpStr += "typedef "+CExpressionAssignment.getDatatype(cfunc.getDatatype())+"(*"+tmp.toString()+")(";
                        
                        boolean start = false;
                        for (Variable par: cfunc.getParameter()) {
                            if (start) tmpStr += ", ";
                            tmpStr+=CExpressionAssignment.getDatatype(par.getDatatype());
                            start = true;

                        }
                        tmpStr +=");"+newLine();
                        tmpStr += "#endif"+newLine();
                        headerCode = tmpStr + headerCode;
                    }
                }
                if (!(func instanceof CodeFunction) || ((CodeFunction)func).getScope().getParser() == this) {
                    headerCode += CExpressionAssignment.getDatatype(func.getDatatype()) + " "+func.generateFuncName()+"(";
                    boolean start = false;
                    if (func instanceof CodeFunction) {
                        CodeFunction cfunc = (CodeFunction)func;
                        
                        if (cfunc.getScope().getOwnerClass() != null && !cfunc.isStatic()) {
                            headerCode += CExpressionAssignment.getDatatype(new Datatype(Datatype.Name2Int(cfunc.getScope().getOwnerClass().getName()),0,null))+" _this_";
                            start = true;
                        }

                    }
                    for (Variable param: func.getParameter()) {
                        if (start) headerCode += ", ";
                        headerCode += CExpressionAssignment.getDatatype(param)+" "+param.getName();

                        start = true;
                    }
                    headerCode += ");"+newLine();
                }
            }
        }
        for (CExpressionAutoArray arr: autoArrs) {
            try {
                String proto = "GCNode* genAutoArray_"+CExpressionAssignment.getRealDatatype(arr.getDatatype()).replace("*", "_dim")+"(int size,...)";
                headerCode += proto+";"+newLine();

                identUp();
                functionCode += proto + " {"+newLine();
                functionCode += "va_list args;"+newLine();
                functionCode += "va_start(args, size);"+newLine();
                String typ = CExpressionAssignment.getDatatype(new Datatype(arr.getDatatype().getUnsafeID(),arr.getDatatype().getDimensions() -1 ,null));
                functionCode += "GCNode* tmp = allocarray_1_(sizeof(" + typ + "), size);"+newLine();
                functionCode += "int i;"+newLine();
                identUp();
                functionCode += "for (i = 0; i < size; i++) {"+newLine();
                functionCode += "((" + typ + "*)tmp -> data)[i] = va_arg(args, "+typ+");"+newLine();
                identDown();
                functionCode += newLine() + "}"+newLine();

                functionCode += "va_end (args);"+newLine();
                functionCode += "return tmp;";
                identDown();
                functionCode += newLine() + "}" + newLine();
            } catch (SyntaxException ex) {
                System.err.println("Something went really wrong...");
            }
        }
        //Nun die fehlenden Array Initalasatoren implementieren
        if (isMain) {
            headerCode += "void initStatic();"+newLine();

            identUp();
            functionCode += "void initStatic() {"+newLine();
            functionCode += initStatics;
            identDown();
            functionCode += newLine();
            functionCode += "}"+newLine();

            for (int i = 1; i<=CExpressionNew.maxArraySize;i++) {
                String head = "";
                head += "GCNode* allocarray_"+i+"_(int size";
                String all = "";
                for (int j = 0; j<i;j++) {
                    head += ", int param"+j;
                    all += "param"+j+"*";
                }
                head += ", void(*tracefunc)(GCNode*)";
                head += ")";
                all += "1";

                headerCode += head+";"+newLine();

                identUp();
                functionCode += head+" {"+newLine();
                if ((i-1)>0) {
                    functionCode += "GCNode** arr = malloc(sizeof(GCNode)*param0);"+newLine();
                } else {
                    functionCode += "void** arr = malloc(size*param0);"+newLine();
                }
                
                functionCode += "int i;"+newLine();
                functionCode += "for (i = 0;i < param0; i++) ";
                if ((i-1)>0) {
                    functionCode += "arr[i] = allocarray_"+(i-1)+"_(size";
                    for (int j = 1; j < i; j++) {
                        functionCode+= ", param"+j;
                    }
                    functionCode += ");"+newLine();
                } else {
                    functionCode += "arr[i] = NULL;"+newLine();
                }
                //functionCode +=" = malloc(size*param"+j+");"+newLine();
               
                functionCode += "GCNode* node = gc_malloc(0,tracefunc);"+newLine();
                functionCode += "node -> data = arr;"+newLine();
                functionCode += "node -> size = size*"+all+";"+newLine();;
                functionCode += "node -> typid = size; //hier wird typid als groesse missbraucht, um platz zu sparen"+newLine();
                functionCode += "return node;"+newLine();
                identDown();
                functionCode += newLine();
                functionCode += "}";
                functionCode += newLine();
            }
        }
        
        if (isMain) {
            if (CExpressionTry.TRYCOUNT > 0) headerCode += "jmp_buf ";
            for (int i = 0; i<CExpressionTry.TRYCOUNT;i++) {
                if (i != 0) headerCode += ", ";
                headerCode += "exc_env_"+i;
            }
            if (CExpressionTry.TRYCOUNT > 0) headerCode += ";"+newLine();
            String head = "void arrayTrace(GCNode* _this_)";
            headerCode += head+";"+newLine();
            identUp();
            
            functionCode +=  head + " {"+newLine();
            functionCode += "if (_this_ == NULL) return;"+newLine();
            functionCode += "_this_ -> mark = 1;"+newLine();
            functionCode += "int i = 0;"+newLine();
            identUp();
            functionCode += "for (i = 0; i < _this_ -> size/_this_ -> typid; i++) {"+newLine();
            identUp();
            functionCode += "if (((GCNode**)_this_ -> data)[i] != NULL)"+newLine();
            identUp();
            functionCode += "if (((GCNode**)_this_ -> data)[i] -> mark == 0)"+newLine();
            identDown();
            identDown();
            identDown();
            functionCode += "(((GCNode**)_this_ -> data)[i]) -> trace(((GCNode**)_this_ -> data)[i]);"+newLine();
            identDown();
            functionCode += "}"+newLine();
            
            functionCode += "}"+newLine();
        }
        for (Class c: getClasses()) {
            boolean has = false;
            for (Variable att: c.getAttibutes()) {
                if (att.getDatatype().isGC()) {
                    has = true;
                    break;
                }
            }
            if (has) {
                String header = "void trace"+c.toString()+"(GCNode* _this_)";
                headerCode += header + ";"+newLine();

                identUp();
                functionCode += header + "{"+newLine();
                functionCode += "//traces all references of this class."+newLine();
                functionCode += "if (_this_ == NULL) return;"+newLine();
                functionCode += "_this_ -> mark = 1;"+newLine();
                for (Variable att: c.getAttibutes()) {
                    if (att.getDatatype().isGC() && !att.isStatic()) {
                        String varAcc = "((("+c.toString()+"*)_this_-> data) -> "+CExpressionAssignment.getAccess(att)+")";
                        identUp();
                        functionCode += "if (" +varAcc+ " != NULL) "+newLine();
                        identDown();
                        functionCode += "if (" +varAcc+ " -> mark) "+varAcc+"-> trace("+varAcc+");"+newLine();
                    }
                }
                identDown();
                functionCode += newLine();
                functionCode += "}"+newLine();
            }
        }
        
        if (myImport != null) headerCode += "#endif\n";
        
        if (isMain) {
            template = template.replace("$MAIN_CODE","");
            template = template.replace("$ENDMAIN_CODE","");
        } else {
            template = template.replace(mainCode, "");
        }

        template = template.replace("$IMPORT_CODE", importCode);
        template = template.replace("$FUNCTION_CODE", functionCode);
        this.template = template;

    }

    public void addAutoArray(CExpressionAutoArray arr) {
        try {
            for (CExpressionAutoArray a: autoArrs) {
                if (a.getDatatype().match(arr.getDatatype())) {
                    return;
                }
            }
            autoArrs.add(arr);
        } catch (SyntaxException ex) {
            
        }
    }

    public void backend() {
        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter("output/file"+myImport.getID()+".c"));
            writer.write(template);
            writer.close();
            
            writer = new BufferedWriter(new FileWriter("output/file"+myImport.getID()+".h"));
            writer.write(headerCode);
            writer.close();

            String userDir = System.getProperty("user.dir");
            String command = userDir + "/compilers/c/bin/gcc.exe -c "+userDir+"/output/file"+myImport.getID()+".c";
            
            InputStream strm = Runtime.getRuntime().exec(command).getErrorStream();
            int i = 0;
            while ((i = strm.read()) != -1 ) {
                System.out.print((char)i);
            }
        } catch (IOException ex) {
            System.err.println("Error while executing backend.");
        }
        
    }

    public void link(LinkedList<Import> other) {
        
        try {
            String userDir = System.getProperty("user.dir");
            String links = "";
            for (Import imp: other) {
                if (imp.getParser() != null)
                    links += "\""+userDir+"/output/file"+imp.getID()+".c\" ";
                else if (imp.getPath().endsWith("o"))
                    links += "\""+imp.getPath()+"\" ";
            }
            String command = userDir + "/compilers/c/bin/gcc.exe -O3 -o \"program.exe\" "+links;
            System.out.println(command);
            InputStream strm = Runtime.getRuntime().exec(command).getErrorStream();
            int i = 0;
            while ((i = strm.read()) != -1 ) {
                System.out.print((char)i);
            }
        } catch (IOException ex) {
            System.err.println("error.");
        }
    }

    public String getGeneratedCode() {
        return template;
    }

    public void execute() {
        try {
            String userDir = System.getProperty("user.dir");
            InputStream strm = Runtime.getRuntime().exec("program.exe").getInputStream();
            int i = 0;
            while ((i = strm.read()) != -1 ) {
                System.out.print((char)i);
            }
        } catch (IOException ex) {
            System.err.println("error");
        }
    }

    /**
     * Der Sprachenname
     */
    public String getLanguageName() {
        return "c";
    }
}
