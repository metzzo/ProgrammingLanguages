package Compiler.Parser;

import Compiler.Lexer.Lexer;
import Compiler.*;
import Compiler.Class;
import Compiler.Parser.Expression.*;
import java.io.*;
import java.util.*;
import lumpy.Main;

/**
 * Parst und erstellt den AST
 * @author Coolo
 */
public abstract class Parser {
    private static int anonFunc = 0;
    private static String[] scopeKeyword = {
        "if",
        "loop",
        "function",
        "select",
        "class",
        "elseif",
        "else",
        "language",
        "generator",
        "property",
        "get",
        "set",
        "try",
        "catch",
        "finally",
        "struct",
        "operator",
        "rem",
    };
    private static Scope hyperScope = new Scope("hyperscope",null,null); //Dieser Scope gilt für alle
    private static Operator[] operators;
    private int maxPrio;
    private Token previous;
    private Token current;
    private ListIterator<Token> iterator;
    private LinkedList<Token> tokens;
    private ExpressionManager man;
    private Lexer lexer;
    private Scope currentScope = null;
    private int ident = 0; //einrückung
    private Function currentFunction; //Die aktuelle Funktion, für die kompiliert wird
    private Class currentClass; //Die aktuelle Klasse
    private String filePath;
    private LinkedList<Class> classes;
    private boolean noDoubleDeclaration = true; // in "var" keine doppelten deklarationen
    private boolean inExtern = false; //In einem extern block
    private boolean inGenerator = false; //in einem generator block
    private boolean inLoop = false; // in einer schleife
    private boolean inSelect = false; //In einem select
    private boolean isStatic = false; //statischer member?
    private boolean alreadyCompiled = false;
    private CodeFunction lastFunc = null;
    private LinkedList<ExpressionFunctionDeclaration> funcDecs;
    private HashMap<String,String> replacer;
    private LinkedList<Datatype> currentTemplates;


    /**
     * Parst eine Datei mit dem gegebenen Analyser
     * @param analyser
     */
    public Parser(Lexer lexer, ExpressionManager man, String filePath) throws SyntaxException {
        if (lexer == null && man == null && filePath == null) return;

        int[] add = { //alle addierbaren
            Datatype.FLOAT_DATATYPE,
            Datatype.INT_DATATYPE,
            Datatype.STRING_DATATYPE
        };
        int all[] = { //der rest
            Datatype.FLOAT_DATATYPE,
            Datatype.INT_DATATYPE,
        };
        int allbool[] = { //der rest
            Datatype.FLOAT_DATATYPE,
            Datatype.INT_DATATYPE,
            Datatype.BOOLEAN_DATATYPE
        };
        int[] bool = {Datatype.BOOLEAN_DATATYPE};
        Operator[] o = {
            new Operator("<","less", 3, allbool,Datatype.BOOLEAN_DATATYPE),
            new Operator(">","greater", 3, allbool,Datatype.BOOLEAN_DATATYPE),
            new Operator("!=","unequal", 3, allbool,Datatype.BOOLEAN_DATATYPE),
            new Operator("+","plus", 5, add),
            new Operator("-","minus", 5, all),
            new Operator("*","mul", 10, all),
            new Operator("/","div", 10, all),
            new Operator("<=","lessequ", 3, allbool,Datatype.BOOLEAN_DATATYPE),
            new Operator(">=","gretequ", 3, allbool,Datatype.BOOLEAN_DATATYPE),
            new Operator("==","equal", 3, allbool,Datatype.BOOLEAN_DATATYPE),
            new Operator("and","and", 1, bool,Datatype.BOOLEAN_DATATYPE),
            new Operator("or","or", 1, bool,Datatype.BOOLEAN_DATATYPE),
            new Operator("xor","xor", 1, bool,Datatype.BOOLEAN_DATATYPE),
            new Operator("mod","mod",1,all)
        };

        if (operators == null) operators = o;
        maxPrio = 10;

        this.classes = new LinkedList<Class>();
        this.funcDecs = new LinkedList<ExpressionFunctionDeclaration>();

        this.lexer = lexer;
        this.man = man;
        this.filePath = filePath;
        man.setParser(this);


        tokens = lexer.getTokens();
        iterator = tokens.listIterator();
        while (iterator.hasNext()) {
            Token tok = iterator.next();
            if (tok.getText().equals("class") || tok.getText().contains("struct")) {
                Token t = tok;
                tok = iterator.next();

                if (tok.getText().equals("final") || tok.getText().equals("abstract")) tok = iterator.next();

                if (tok.getText().equals("<")) {
                    while (!tok.getText().equals(">") && iterator.hasNext()) tok = iterator.next();
                    tok = iterator.next();
                }
                for (Class c: Class.getClasses()) {
                    if (c.getName().equals(tok.getText())) {
                        current = tok;
                        error("Class '"+c.getName()+"' already exists.");
                    }
                }
                Class.newClass(new Class(tok.getText(),t,this));
            }
        }
        iterator = tokens.listIterator();


        boolean dont = false;
        for (Import imp: Main.imports) {
            if (imp.getPath().equals(filePath)) {
                dont = true;
                break;
            }
        }
        if (!dont) {
            Import imp = newImport(filePath);
            imp.setParser(this);
        }


        getNext();

        currentScope = new Scope("mainScope",this,hyperScope);

        while(iterator.hasNext()) {
            if (isToken("function") || isToken("class") || isToken("extension") || isToken("extern") || isToken("import") || isToken("language") || isToken("operator")) {
                keyWord();
            } else {
                match("\n");
                while (isToken("\n")) match("\n");
            }

        }
    }

    /**
     * Kompiliert alle Funktion
     */
    public void compile() throws SyntaxException {
        alreadyCompiled = true;

        

        //program kompilieren
        for (Function func: hyperScope.getFunctions()) {
            if (func.getName().equals("program")) {
                func.use();
                compileFunction(func, null);
                break;
            }
        }

        //alle nicht kompilierten aber benutzten funktionen kompilieren
        for (Function func: hyperScope.getFunctions()) {
            if (func.isUsed() && !func.isCompiled()) {
                compileFunction(func, null);
            }
        }

        //nun alle unbenutzen Funktionen löschen
        ListIterator<Function> it = hyperScope.getFunctions().listIterator();
        while (it.hasNext()) {
            if (!it.next().isUsed()) it.remove();
        }

        //marke alle überladene funktionen als überladen
        for (Function func1 : hyperScope.getFunctions()) {
            for (Function func2 : hyperScope.getFunctions()) {
                if (func1 != func2 && func1.getName().equals(func2.getName())) {
                    if (func1.getSynonym().equals(func2.getSynonym())) {
                        func1.overloadSynonym();
                        func2.overloadSynonym();
                    }
                }
            }
        }
        /*
        for (Variable var: Variable.getVariables()) {
            if (!var.isUsed()) continue;
            if (var.getDatatype() == null || (var.getDatatype().isVoid() && !(var instanceof Function)) || var.getDatatype().isNull()) {
                current = tokens.getFirst();
                error("Invalid datatype '"+var.getDatatype()+"' for variable "+var.getName());
            }
        }*/
    }
    /**
     * sucht den nächsten Token, der in ordnung ist
     * @return Wenn es nicht fixbar ist, dann wird true zurückgegeben
     */
    private void fixError() throws SyntaxException {
        getNext();
        while (!isToken("\n")) {
            try {
                getNext();
            } catch (SyntaxException ex) {
                throw ex;
            }
        }
    }

    /**
     * Parst einen do - end block.
     * @return
     */
    private ExpressionBlock block(boolean inGen) throws SyntaxException {
        Scope oldScope = currentScope;
        currentScope = new Scope("",this, currentScope);
        boolean isMain = false;
        if (oldScope == null) {
            isMain = true;
        }
        ExpressionBlock block = getManager().getBlockExpression(inGen);

        
        if (isToken("do")) {
             match("do");
        } else {
            getNext();
        }
        while (!getCurrent().getText().equals("end")) {
            while (isToken("\n")) match("\n");
            Expression ex = null;
            try {
                int line = getCurrent().getLine();
                ex = line(isMain);
                ex.setLine(line);
                block.addLine(ex);
            } catch (SyntaxException exc) {
                if (exc.isDuck()) {
                    throw exc;
                } else {
                    System.out.println(exc.genError());
                    fixError();
                }
            } catch (Exception exc) {
                System.out.println(new SyntaxException(this, "Unknown error",getCurrent(),false).genError());
                exc.printStackTrace(System.out);
            }
            //if (ex != null && ex instanceof ExpressionIf);
            //else
                //match("\n");
            while (isToken("\n")) match("\n");
        }
        match("end");
        while (isToken("\n")) match("\n");

        if (oldScope != null)
            currentScope = oldScope;
        return block;
    }
    /**
     * Kompiliert eine Funktion
     */
    public Function compileFunction(Function func,LinkedList<Expression> parameters) throws SyntaxException {
        if (func.isCompiled()) return func;
        boolean err = SyntaxException.wasError;
        Token safe = getCurrent();
        func.use();
        Scope tmp = currentScope;
        Class tmpClass = currentClass;
        boolean tmpGen = inGenerator;
        SyntaxException duck = null;
        if (func instanceof CodeFunction) {
            CodeFunction codeFunc = (CodeFunction)func;
            currentClass = codeFunc.getScope().getOwnerClass();
            if (codeFunc.getScope().getParser() != this) {
                codeFunc.getScope().getParser().compileFunction(func,parameters);
            } else {
                //CodeFunction => kompiliere
                currentScope = codeFunc.getScope();
                
                for (Variable par: codeFunc.getParameter()) {
                    if (!codeFunc.getScope().varExist(par.getName()))
                        currentScope.newVariable(par);
                }

                currentScope.getFunctions().addAll(getHyperScope().getFunctions());

                if (codeFunc.getStartToken() != null) {
                    iterator = tokens.listIterator( tokens.indexOf(codeFunc.getStartToken()) );
                    getNext();
                    Function tmpF = currentFunction;
                    currentFunction = codeFunc;

                    boolean generator = false;
                    if (codeFunc.isGenerator()) {
                        inGenerator = true;
                        generator = true;
                    }
                    HashMap<String, String> tmpReplacer = replacer;
                    if (currentClass != null) {
                        replacer = currentClass.getReplacer();
                    }
                    
                    func.compile();
                    
                        
                    
                    ExpressionBlock funcBlock =null;
                    try {
                        
                        funcBlock = block(generator); //nun den block parsen
                    } catch(SyntaxException ex) {
                        duck = ex;
                    }
                    replacer = tmpReplacer;
                    
                    if (duck == null) {
                        codeFunc.setBlock(funcBlock);
                        for (Variable par: codeFunc.getParameter()) {
                            funcBlock.addVariable(par);
                        }
                    

                        if (codeFunc.getDatatype() == null) {
                            codeFunc.setDatatype(new Datatype(Datatype.VOID_DATATYPE,0,null));

                        }

                        ExpressionReturn exprRet = null;
                        if (codeFunc.getScope().getOwnerClass() != null && codeFunc.getName().equals("new")) {
                            exprRet = getManager().getReturnExpression(getManager().getVariableExpression(codeFunc.getScope().getVariable("this")));
                        } else {
                            exprRet = getManager().getReturnExpression(codeFunc.getDatatype().createDatatypeExpression(getManager()));
                        }


                        funcBlock.addLine(exprRet);

                        getFunctionDeclaration().add(getManager().getFunctionDeclarationExpression(funcBlock, codeFunc));

                    } else {
                        func.notCompiled();
                    }

                    

                    currentFunction = tmpF;
                    
                }
            }
        }

        current = safe;
        iterator = tokens.listIterator(tokens.indexOf(safe));
        getNext();

        currentClass = tmpClass;
        currentScope = tmp;
        inGenerator = tmpGen;

        if (duck != null) {
            if (!duck.isDuck() || true) {
                throw duck;
            }
            SyntaxException.wasError =  err;
            if (parameters == null) {
                error("Cannot resolve variable datatype.");
            }
            //templates automatich generieren lassen
            CodeFunction cfunc = (CodeFunction)func;
            if (cfunc.duckTry()) {
                throw duck;
            } else {
                cfunc.tryDuck(true);
            }
            cfunc.notUsed();
            if (cfunc.isDuckType()) error("Datatype of function parameter not resolvable.");
            cfunc.setDuckType();
            CodeFunction f = new CodeFunction(func.getName(),func.getDatatype(),new Scope("",this,null));
            
            if (cfunc.getScope().getOwnerClass() != null) {
                //f.newParameter(this, "this", new Datatype(cfunc.getScope().getOwnerClass().getUnsafeID(),0,null), null);
            }
            int i = 0;
            for (Expression expr: parameters) {
                f.newParameter(this,cfunc.getParameter().get(i).getName(), expr.getDatatype(), null);
                i++;
            }
            f.setStartToken(cfunc.getStartToken());
            f.setTyp(cfunc.getTyp());
            f.setPublic(cfunc.isPublic());
            f.setStatic(f.isStatic());
            f.setDatatype(cfunc.getDatatype());
            f.use();
            compileFunction(f,parameters);
            f.getScope().setClass(cfunc.getScope().getOwnerClass());


            if (cfunc.getScope().getOwnerClass() != null) {
                Variable thisVar = null, superVar = null;
                thisVar = cfunc.getScope().getOwnerClass().getScope().getVariable("this");
                superVar = cfunc.getScope().getOwnerClass().getScope().getVariable("super");
                cfunc.getScope().getOwnerClass().newMethod(cfunc.isPublic(), f, thisVar, superVar, cfunc.isStatic());
                String tmpName = f.getName();
                f.setName(cfunc.getScope().getOwnerClass().getName()+"_"+tmpName);
                getHyperScope().newFunction(f);
                f.setName(tmpName);
            } else {
                getHyperScope().newFunction(f);
            }

            //for (Variable var: cfunc.getScope().getVariable) {
            //    var.notUsed();
            //}

            return f;
        } else {
            return func;
        }
    }
    /**
     * Parst eine Zeile, MUSS mit \n enden
     * @return
     */
    private Expression line(boolean isMain) throws SyntaxException {
        Expression expr;
        expr = keyWord();
        if (expr != null) {
            return expr;
        }
        
        expr = variableExpression();
        if (expr != null) {
            return expr;
        }

        //hier war factor()
        
        error("Unknown/Unexpected expression.");
        
        //match("\n");
        return expr;
    }

    /**
     * Berechnet einen mathematischen term aus +,-,* und /
     */
    private Expression operator(int prio) throws SyntaxException {
        if (prio > maxPrio) {
            Expression expr = factor();
            if (expr != null) return expr;
            error("Unknown token.");
            return null;
        } else {
            boolean found = false;
            Expression expr1, retExpr;
            expr1 = operator(prio + 1);
            retExpr = expr1;
            do {
                found = false;
                Expression expr2;
                boolean prim = false;
                
                for (Operator op : operators) {
                    if (op.getPrio() == prio && (isToken(op.getName()) || isToken("prim_"+op.getRealName()))) {
                        if (isToken("prim_"+op.getRealName())) {
                            prim = true;
                        }
                        getNext();
                        expr2 = operator(prio + 1);


                        Datatype data1 = null, data2 = null;
                        boolean err = SyntaxException.wasError;
                        try {
                            data1 = expr1.getDatatype();
                        } catch(SyntaxException ex) {
                            data1 = null;
                        }

                        try {
                            data2 = expr2.getDatatype();
                        } catch(SyntaxException ex) {
                            data2 = null;
                        }
                        SyntaxException.wasError = err;

                        if (data1 == null || data2 == null) {
                            if (data1 == null && data2 == null) {
                                if (currentFunction != null) {
                                    ((CodeFunction)currentFunction).setDuckType();
                                    error("Ducktype error.",true);
                                } else {
                                    error("Cannot resolve datatype. Two unknown datatypes");
                                }
                            } else {
                                if (data1 == null) {
                                    if (expr1 instanceof ExpressionIdentifier) {
                                        ExpressionIdentifier ident = (ExpressionIdentifier)expr1;
                                        if (ident.getVariable() != null) {
                                            ident.getVariable().setDatatype(data2);
                                        } else {
                                            error("Identifier has no variable.");
                                        }
                                    } else {
                                        error("Cannot set datatype.");
                                    }
                                } else {
                                    if (expr2 instanceof ExpressionIdentifier) {
                                        ExpressionIdentifier ident = (ExpressionIdentifier)expr2;
                                        if (ident.getVariable() != null) {
                                            ident.getVariable().setDatatype(data1);
                                        } else {
                                            error("Identifier has no variable.");
                                        }
                                    } else {
                                        error("Cannot set datatype.");
                                    }
                                }
                            }
                        }


                        found = true;
                        if (retExpr.getDatatype() == null || expr2.getDatatype() == null) error("Variable datatype unknown.");
                        Expression tmpExpr = null;
                        if (!prim) {
                            for (CodeFunction func: op.getOverloads()) {
                                if (func.getParameter().get(0).getDatatype().match(retExpr.getDatatype())) {
                                    if (func.getParameter().get(1).getDatatype().match(expr2.getDatatype())) {
                                        LinkedList<Expression> tmp = new LinkedList<Expression>();
                                        tmp.add(retExpr);
                                        tmp.add(expr2);

                                        tmpExpr = functionCall(func.getName(),op.getFunctions(),tmp,false);
                                        break;
                                    }
                                }
                                /*
                                if (func.getParameter().get(1).getDatatype().match(retExpr.getDatatype())) {
                                    if (func.getParameter().get(0).getDatatype().match(expr2.getDatatype())) {
                                        LinkedList<Expression> tmp = new LinkedList<Expression>();
                                        tmp.add(expr2);
                                        tmp.add(retExpr);


                                        tmpExpr = functionCall(func.getName(),op.getFunctions(),tmp,false);
                                        break;
                                    }
                                }*/
                            }
                        }
                        if (tmpExpr != null) {
                            retExpr = tmpExpr;
                        } else {
                            retExpr = getManager().getOperatorExpression(op, retExpr, expr2);
                        }
                        

                        break;
                    }
                }
            } while (found);
            return retExpr;
        }
    }

    /**
     * Ein Identifier, Zahl, String,...
     */
    private Expression factor() throws SyntaxException {
        Expression expr;
        if (isToken("null")) {
            match("null");
            return getManager().getNullExpression();
        }
        if (isToken("adressof")) {
            match("adressof");
            ExpressionIdentifier ident = variableExpression();
            return getManager().getAdressOfExpression(ident);
        }
        if (isToken("-")) {
            match("-");
            expr = operator(0);
            Operator op = null;
            for (Operator o: operators) {
                if (o.getName().equals("*")) {
                    op = o;
                    break;
                }
            }
            Expression min = null;
            switch (expr.getDatatype().getUnsafeID()) {
                case Datatype.INT_DATATYPE:
                    min = getManager().getIntegerExpression(-1);
                    break;
                case Datatype.FLOAT_DATATYPE:
                    min = getManager().getFloatExpression(-1.0f);
                    break;
                default:
                    error("Cannot negate datatype: "+expr.getDatatype().getName());

            }
            return getManager().getOperatorExpression(op, expr, min);
        }
        if (isToken("(")) {
            match("(");
            expr = operator(0);
            match(")");
            return expr;
        }
        
        if (getCurrent().getText().equals("true")) {
            match("true");
            return getManager().getBooleanExpression(true);
        }
        if (getCurrent().getText().equals("false")) {
            match("false");
            return getManager().getBooleanExpression(false);
        }

        
        expr = variableExpression();
        if (expr != null) {
            return expr;
        }
        
        return null; //kommt hier nie an.
    }

    /**
     * Erstellt einen Funktionsaufruf
     */
    private ExpressionFunctionCall functionCall(String funcName, LinkedList<Function> functions, LinkedList<Expression> parameters, boolean methodCall) throws SyntaxException {
        Function call = null;
        //nun passende funktion suchen
        LinkedList<Function> newFuncs = new LinkedList<Function>();
        for (Function func : functions) {
            newFuncs.add(func);
            if (func.getName().equals(funcName) && !func.isCompiled() && func instanceof CodeFunction) {
                
                Function tmp = compileFunction(func, parameters);
                if (tmp != func) {
                    newFuncs.removeLast();
                    newFuncs.add(tmp);
                }
            }
        }
        functions = newFuncs;
        for (Function func : functions) {
            if (func.match(funcName, parameters)) {
                if (call != null) { // && !methodCall war hier
                    error("Duplicate function/method possibilities.");
                }
                call = func;
            }
        }

        if (call != null) {
            call.use();
            //aufrufen
            if (!call.isPublic()) {
                if (currentClass == null || !currentClass.getMethods().contains(call)) {
                    error("Try to call private class method.");
                }
            }
            int i = 0;
            for (Variable par : call.getParameter()) {
                if (par.isReference() && call instanceof CodeFunction) {
                    if (!(parameters.get(i) instanceof ExpressionVariable)) {
                        error("Call by reference must be a variable: "+par.getName());
                    }
                }
                par.setDatatype(parameters.get(i).getDatatype());
                i++;
            }

            return getManager().getFunctionCallExpression(call, parameters,currentClass);
        } else {
            
            String paramString = "";
            for (Expression param : parameters) {
                paramString += " " + param.getDatatype().toString();
            }
            error("There is no function named '" + funcName + "' with parameter: '" + paramString + " '",true);
        }
        return null;
    }
    
    /**
     * Eine Variable Expression
     * Eine VExpr ist jede Expression die mit einem Identifier beginnt
     * @return
     * @throws SyntaxException
     */
    private ExpressionIdentifier variableExpression() throws SyntaxException {
        ExpressionIdentifier var = null;
        boolean existInClass = false;
        boolean isAttribute = false;
        boolean isExtensionAccess = false;

        if (currentClass != null) {
            for (Variable v: currentClass.getAttibutes()) {
                if (isToken(v.getName())) {
                    existInClass = true;
                    isAttribute = true;
                    break;
                }
            }
            if (!existInClass) {
                for (Function f: currentClass.getMethods()) {
                    if (isToken(f.getName())) {
                        existInClass = true;
                        break;
                    }
                }
            }
            if (isToken("new")) existInClass = false;
        }
        if (getCurrent().getText().length() > 1 && getCurrent().getText().substring(0, 1).equals("\"") && getCurrent().getText().substring(getCurrent().getText().length() - 1).equals("\"")) {
            isExtensionAccess = true;
        }
        try {
            new Double(getCurrent().getText());
            isExtensionAccess = true;
        } catch (NumberFormatException ex) {}
        
        if (getScope().getVariable(getCurrent().getText())!=null || getScope().getFunction(getCurrent().getText()) != null || Datatype.Name2Int(getCurrent().getText()) != -1 || isToken("new") || isToken("function") || isExtensionAccess || isToken("[") || isToken("(")) {
            if (var == null && getScope().getVariable(getCurrent().getText()) != null) {
                var = getManager().getVariableExpression(getScope().getVariable(getCurrent().getText()));
            } else if (isToken("(")) {
                Token tok = getCurrent();
                match("(");
                Expression expr = operator(0);
                match(")");
                if (expr instanceof ExpressionIdentifier) {
                    var = (ExpressionIdentifier)expr;
                } else {
                    while(getCurrent() != tok) getPrevious();
                    return null;
                }
            } else if (isExtensionAccess) {
                boolean find = false;

                if (!find && !getCurrent().getText().contains(".")) {
                    try { //integer
                        var = getManager().getIntegerExpression(new Integer(getCurrent().getText()));
                        find = true;
                    } catch (NumberFormatException ex) {
                    }
                }

                if (!find) {
                    try { //float
                        var = getManager().getFloatExpression(new Float(getCurrent().getText()));
                    } catch (NumberFormatException ex) {
                    }
                }
                
                if (!find && getCurrent().getText().length() > 1 && getCurrent().getText().substring(0, 1).equals("\"") && getCurrent().getText().substring(getCurrent().getText().length() - 1).equals("\"")) {
                    var = getManager().getStringExpression(getCurrent().getText());
                }
            } else if (isToken("[")) {
                match("[");
                LinkedList<Expression> exprs = new LinkedList<Expression>();
                boolean start = false;
                do {
                    while(isToken("\n")) match("\n");
                    if (start) match(",");
                    Expression expr = operator(0);
                    //if (expr.getDatatype().getDimensions()>0) error("Auto array cannot contain arrays.");
                    if (exprs.size()>0 && !exprs.getFirst().getDatatype().match(expr.getDatatype())) error("Auto array datatypes does not match.");
                    exprs.add(expr);
                    start = true;
                } while (!isToken("]"));
                if (!isToken("]")) match("]");
                
                var = getManager().getAutoArrayExpression(exprs);
            } else if (existInClass) {
                if (isAttribute) {
                    Variable vari = null;
                    for (Variable v: currentClass.getAttibutes()) {
                        if (isToken(v.getName())) {
                            vari = v;
                            break;
                        }
                    }
                    if (currentFunction != null && currentFunction.isStatic()) {
                        var = getManager().getStaticAccessExpression(currentClass);
                    } else {
                        var = getManager().getVariableExpression(currentClass.getScope().getVariable("this"));
                    }
                    var = getManager().getAccessExpression(var, getManager().getVariableExpression(vari));
                } else {
                    error("Methods need 'this'");
                }

            } else if (isToken("new")) {
                match("new");
                String typ = getCurrent().getText();
                getNext();
                LinkedList<Datatype> temps = null;
                if (isToken("<")) {
                    temps = new LinkedList<Datatype>();
                    match("<");
                    boolean start = false;
                    while (!isToken(">")) {
                        if (start) match(",");
                        Datatype d = null;


                        if (!(Datatype.Name2Int(getCurrent().getText()) == -1 || getCurrent().getText().equals("null"))) {
                            d = new Datatype(Datatype.Name2Int(getCurrent().getText()),0,null);
                            getNext();
                        } else {
                            d = variableExpression().getDatatype();
                        }
                        temps.add(d);
                        start = true;
                        
                    }
                    match(">");
                    Class c = Class.getClassByName(typ);
                    typ = compileGenericClass(c, temps);
                }
                if (isToken("(")) {
                    Datatype data = new Datatype(Datatype.Name2Int(typ),0,null);
                    Class c = Class.getClassByName(data.getName());


                    match("(");
                    LinkedList<Expression> parameter = new LinkedList<Expression>();
                    boolean start = false;
                    while (!isToken(")")) {
                        if (start) match(",");
                        if (isToken(",")) {
                            parameter.add(getManager().getEmptyExpression());
                        } else {
                            parameter.add(operator(0));
                        }
                        start = true;
                    }
                    match(")");
                    LinkedList<Function> functions = new LinkedList<Function>();
                    if (c == null) error("Unknown class: "+typ);
                    for (Function func: c.getMethods()) {
                        if (func.getName().equals("new")) {
                            functions.add(func);
                        }
                    }
                    if (functions.size() == 0 && c.getTyp() != Class.IS_STRUCT) error("Cannot find constructor.");

                    ExpressionFunctionCall call = null;
                    if (c.getTyp() != Class.IS_STRUCT) {
                        call = functionCall("new", functions, parameter,true);

                        //schauen ob zugreifbar
                        if (!call.getFunction().isPublic() && currentClass != c) {
                            error("Can't access private contructor in non private scope.");
                        }

                        var = call;
                        call.getParameter().addFirst(getManager().getNewExpression(data));
                    } else {
                        var = getManager().getNewExpression(data);
                    }


                    
                } else if (isToken("[")) {
                    int dim = 0;
                    LinkedList<Expression> exprs = new LinkedList<Expression>();
                    do {
                        match("[");
                        dim++;
                        exprs.add(operator(0));
                        match("]");
                    } while (isToken("["));
                    Datatype data = new Datatype(Datatype.Name2Int(typ),dim,null);
                    var = getManager().getNewExpression(data, exprs);
                } else {
                    Datatype data = new Datatype(Datatype.Name2Int(typ),0,null);
                    Class c = Class.getClassByName(data.getName());
                    LinkedList<Expression> parameter = new LinkedList<Expression>();

                    LinkedList<Function> functions = new LinkedList<Function>();
                    if (c == null) error("Unknown class: "+typ);
                    for (Function func: c.getMethods()) {
                        if (func.getName().equals("new")) {
                            functions.add(func);
                        }
                    }
                    if (functions.size() == 0 && c.getTyp() != Class.IS_STRUCT) error("Cannot find constructor.");

                    ExpressionFunctionCall call = null;
                    if (c.getTyp() != Class.IS_STRUCT) {
                        call = functionCall("new", functions, parameter,true);

                        //schauen ob zugreifbar
                        if (!call.getFunction().isPublic() && currentClass != c) {
                            error("Can't access private contructor in non private scope.");
                        }

                        var = call;
                        call.getParameter().addFirst(getManager().getNewExpression(data));
                    } else {
                        var = getManager().getNewExpression(data);
                    }
                }
                
            } else if (isToken("function")) {
                
                Expression expr = keyWord();

                if (expr instanceof ExpressionAnonymousFunc) {
                    var = (ExpressionAnonymousFunc)expr;
                } else {
                    error("Internal error.");
                }
            } else if (Datatype.Name2Int(getCurrent().getText()) != -1) {
                Datatype data = datatype(false,true);
                if (isToken("(")) {
                    match("(");
                    ExpressionIdentifier expr = variableExpression();
                    if (!isToken(")")) match(")");
                    if (data.match(expr.getDatatype())) {
                        var = expr;
                    } else {
                        boolean cantCast = false;
                        if (expr.getDatatype().isClass() || data.isClass()) {
                            if (expr.getDatatype().isClass() || data.isClass()); else {
                                cantCast = true;
                            }
                        }

                        if (expr.getDatatype().isClass() && !expr.getDatatype().match(new Datatype(Datatype.STRING_DATATYPE,expr.getDatatype().getDimensions(),expr.getDatatype().getParameters()))) {
                            //schauen ob dorthingecastet werden kann
                            Class c = (Class)Class.getClassByName(expr.getDatatype().getName());
                            boolean find = false;
                            while (c != null) {
                                if (c.getName().equals(data.getName())) {
                                    find = true;
                                    break;
                                }
                                //nicht sicher ob richtig:
                                for (Class c2: c.getInheriting()) {
                                    if (c2.getName().equals(expr.getDatatype().getName())) {
                                        find = true;
                                        break;
                                    }
                                }
                                c = c.getInherit();
                            }
                            if (!find) cantCast = true;
                        }

                        if (cantCast) {
                            error("Cannot cast '"+expr.getDatatype().toString()+"' to '"+data.toString()+"'");
                        } else {
                            var = getManager().getCastExpression(expr, expr.getDatatype(), data);
                        }
                    }
                } else {
                    for (Class c: Class.getClasses()) {
                        if (isToken(data.getName())) {
                            var = getManager().getStaticAccessExpression(c);
                            break;
                        }
                    }
                }
            } else {
                //funktionsaufruf
                var = null;
            }
            LinkedList<ExpressionProperty> props = new LinkedList<ExpressionProperty>(); // um zu schauen, ob das property get implementiert
            if (!isToken("\n")) getNext();
            while (isToken("(") || isToken(".") || isToken("[") || var == null || var instanceof ExpressionMethod) {
                if (isToken(".") && var != null) {
                    match(".");

                    Datatype curData = var.getDatatype();
                    if (curData.match(new Datatype(curData,0,null)) || Class.getClassByName(curData.toString())!= null) {
                        //okay, nun schauen ob es sich um eine methode oder attribut handelt.
                        String n = curData.getName();
                        if (curData.getDimensions() > 0) n = curData.toString();
                        Class c = Class.getClassByName(n);
                        boolean find = false;
                        //attribut:
                        for (Variable attribute:c.getAttibutes()) {
                            if (isToken(attribute.getName())) {
                                //schauen ob zugreifbar
                                if (!attribute.isPublic() && currentClass != c) {
                                    error("Cant access private attribute in non private scope.");
                                }
                                //yeah \o/
                                var = getManager().getAccessExpression(var, getManager().getVariableExpression(attribute));

                                getNext();
                                find = true;
                                break;
                            }
                        }
                        if (!find) {
                            for (Function func: c.getMethods()) {
                                if (isToken(func.getName())) {
                                    //schauen ob zugreifbar
                                    if (!func.isPublic() && currentClass != c) {
                                        error("Cant access private method in non private scope.");
                                    }
                                    //if (!func.isCompiled()) {
                                    //    compileFunction(func);
                                    //}
                                    var = getManager().getMethodExpression(null,var,c);

                                    getNext();
                                    find = true;
                                    break;
                                }
                            }
                            if (!find) {
                                //schauen ob property
                                for (Property p:c.getPropertys()) {
                                    if (isToken(p.getName())) {
                                        p.compile(this);
                                        var = getManager().getPropertyExpression(p, var);
                                        
                                        find = true;
                                        props.add((ExpressionProperty)var);
                                        getNext();
                                        break;
                                    }
                                }
                                if (!find) {
                                    error("Unknown member '"+getCurrent().getText()+"' of class '"+c.toString()+"'");
                                }
                            }
                        }
                    } else {
                        error("Cannot find identifier of datatype '"+curData.toString()+"'");
                    }
                    
                } else if (isToken("[") && var != null) {
                    LinkedList<Expression> arrs = new LinkedList<Expression>();
                    while (isToken("[")) {
                        match("[");
                        Expression expr1 = null;
                        Expression expr2 = null;
                        boolean slice = false;
                        if (!isToken("..")) {
                            expr1 = operator(0);
                        }
                        if (isToken("..")) {
                            slice = true;
                            //slice
                            match("..");
                            if (!isToken("]")) {
                                expr2 = operator(0);
                            }
                        }
                        Datatype d = new Datatype(Datatype.INT_DATATYPE,0,null);
                        
                        if (expr1 != null && !expr1.getDatatype().match(d)) {
                            error("Left slice expression must be integer, and not "+expr1.getDatatype().toString());
                        }
                        if (expr2 != null && !expr2.getDatatype().match(d)) {
                            error("Right slice expression must be integer, and not "+expr2.getDatatype().toString());
                        }
                        if (var.getDatatype().getDimensions()>0 || var.getDatatype().match(new Datatype(Datatype.STRING_DATATYPE,0,null)));
                        else {
                            if (Class.getClassByName(var.getDatatype().getName()) == null || Class.getClassByName(var.getDatatype().getName()).getProperty() == null) {
                                error("Expecting array or string to slice.");
                            }
                        }
                        if (slice) {
                            var = getManager().getSliceExpression(var, expr1, expr2);
                            
                        } else {
                            arrs.add(expr1);
                        }
                        match("]");
                    }
                    Property p = null;
                    if (var instanceof ExpressionVariable) {
                        ExpressionVariable v = (ExpressionVariable)var;
                        if (v.getDatatype().isClass()) {
                            Class c = Class.getClassByName(v.getDatatype().getName());
                            if (c != null) {
                                if (c.getProperty() != null) {
                                    var = getManager().getPropertyExpression(c.getProperty(), var);
                                    p = c.getProperty();
                                    
                                }
                            }
                        }
                    }
                    if (var instanceof ExpressionProperty) {
                        p = ((ExpressionProperty)var).getProperty();
                    }
                    if (p != null) {
                        if (arrs.size() == p.getIndexer().size()) {
                            int i = 0;
                            for (Datatype d: p.getIndexer()) {
                                if (!d.match(arrs.get(i).getDatatype())) {
                                    error("Indexer datatype does not match." + d.generateErrorMsg(arrs.get(i).getDatatype()));
                                }
                                i++;
                            }
                        }
                        ((ExpressionProperty)var).setIndexer(arrs);
                    } else {
                        if (var instanceof ExpressionSlice); else {
                            var = getManager().getArrayExpression(var, arrs);
                        }
                    }
                } else {
                    LinkedList<Function> functions = null;
                    String funcName = getPrevious().getText();
                    //schauen ob funktionsname
                    boolean isFunc = false;
                    boolean isAnonyme = false;
                    if (var != null) {
                        if (var instanceof ExpressionMethod) {
                            Class c = ((ExpressionMethod)var).getOwnerClass();
                            functions = new LinkedList<Function>();
                            for (Function func: c.getMethods()) {
                                if (funcName.equals(func.getName())) {
                                    isFunc = true;
                                    functions.add(func);
                                }
                            }
                        } else {
                            //schauen ob anonym.
                            if (var != null && ((var instanceof ExpressionAnonymousFuncCall && var.getDatatype().getParameters()!=null) || var.getVariable().getDatatype().getParameters() != null)) {
                                isAnonyme = true;
                            } else {
                                isFunc = false;
                            }
                        }
                    } else {
                        
                        isFunc = getScope().getFunction(getCurrent().getText()) != null;
                        functions = getScope().getFunction(funcName);
                    }
                    if (isFunc || isAnonyme) {
                        boolean wasBracket = false;
                        if (isToken("(")) {
                            match("(");
                            wasBracket = true;
                        }
                        boolean start = false;
                        LinkedList<Expression> parameters = new LinkedList<Expression>();
                        while (!isToken(")") && !isToken("\n")) {
                            if (start) match(",");
                            if (isToken(",")) {
                                parameters.add(getManager().getEmptyExpression());
                            } else {
                                parameters.add(operator(0));
                            }
                            start = true;
                        }
                        if (isToken(")") && !wasBracket) {
                            error("Missing beginning '('");
                        }
                        if (isToken("\n") && wasBracket) {
                            error("Missing ')'");
                        }
                        if (isToken(")")) getNext();
                        

                        if (funcName.equals("new")) {
                            //Hier habe ich || isnew weggegeben.
                            if (currentFunction instanceof CodeFunction && ((CodeFunction)currentFunction).getTyp() == CodeFunction.IS_CONSTRUCT); else {
                                error("Don't call Constructor within non constructor.");
                            }
                        }
                        
                        if (isFunc) {
                            ExpressionFunctionCall call = functionCall(funcName, functions, parameters, var != null);
                            if (call.getDatatype() != null && var instanceof ExpressionMethod && var.getDatatype() == null) {
                                ((ExpressionMethod)var).setDatatype(call.getDatatype());
                            }
                            if (var != null) {
                                call.getParameter().addFirst(var);
                            }
                            var = call;
                        } else if (isAnonyme) {
                            var = getManager().getAnonymousFuncCallExpression(var.getDatatype(),var,parameters);
                        }

                        
                    } else {
                        error("Unknown function/method: "+funcName);
                    }
                }
                existInClass = false;
            }

            //schauen ob set
            if (isToken("=")) {
                match("=");
                if (var.getVariable() == null) {
                    error("Cannot assign non variable.");
                }
                Expression expr = operator(0);
                if (var instanceof ExpressionProperty) {
                    if (((ExpressionProperty)var).getProperty().getSet() == null) error("Variable '"+((ExpressionProperty)var).getProperty().getName()+"' does not implement 'set'.");
                    ((ExpressionProperty)var).setValue(expr);
                }
                if (var.getVariable().getDatatype() == null) {
                    var.getVariable().setDatatype(expr.getDatatype());
                } else if (expr instanceof ExpressionIdentifier && ((ExpressionIdentifier)expr).getVariable()!= null && ((ExpressionIdentifier)expr).getVariable().getDatatype() == null) {
                    ((ExpressionIdentifier)expr).getVariable().setDatatype(var.getDatatype());
                }
                

                
                if (expr.getDatatype().isVoid()) {
                    error("Variable cannot contain void datatype.");
                }
                
                if (!var.getDatatype().match(expr.getDatatype())) { //ist weil, variable einen generic hat, aber "new" eins ohne generic zurückgibt
                    error(var.getVariable().getDatatype().generateErrorMsg(expr.getDatatype()));
                }
                if (var instanceof ExpressionProperty);
                else {
                    var = getManager().getAssignmentExpression(var.getVariable(), var, expr);
                }
                
            }

            for (ExpressionProperty p: props) {
                if (p.getProperty().getGet() == null && p.getValue() == null) {
                    error("Property '"+p.getProperty().getName()+"' does not implement 'get'.");
                }
            }

            return var;
        } else {
            return null;
        }
    }

    /**
     * Importieren
     * @param path
     */
    private Import newImport(String path) {
        Import imp = new Import(path);
        Main.imports.addLast(imp);
        return imp;
    }
    /**
     * Der Wrapper, um before = null zu setzen
     */
    public Datatype datatype(boolean match,boolean funcDatatype) throws SyntaxException {
        return datatype(match,funcDatatype,null);
    }
    /**
     * Parst einen Datentyp
     */
    @SuppressWarnings("empty-statement")
    private Datatype datatype(boolean match,boolean funcDatatype,Datatype before) throws SyntaxException {
        LinkedList<Datatype> parameters = null;
        String name = "";
        if (before == null) {
            if (match) match(":");
            name = getCurrent().getText();
            isValidDatatype(getCurrent());
            getNext();
        }
        boolean good = true;
        if (isToken("(")) {
            //Schauen ob danach eine "()", wenn funcdatatype
            Token tmp = getCurrent();
            parameters = new LinkedList<Datatype>();
            
            match("(");
            boolean start = false;
            while (!isToken(")")) {

                boolean wasError = SyntaxException.wasError;
                try {
                    if (start) match(",");
                    parameters.add(datatype(false,false));
                } catch (SyntaxException ex) {
                    if (funcDatatype) {
                        SyntaxException.wasError = wasError;
                        good = false;
                        break;
                    } else {
                        throw ex;
                    }
                }
                start = true;
            }
            if (good) match(")");
            if (funcDatatype) {
                if (!isToken("(")) { //|| good war hier, ka ob falsch
                    //zurück gehen
                    while (getPrev() != tmp);
                    getNext();
                    parameters = null;
                }
            }
        }

        if (isToken("<")) {
            Class c = Class.getClassByName(name);
            name += "_templates_";
            match("<");
            boolean start = false;
            LinkedList<Datatype> data = new LinkedList<Datatype>();
            while (!isToken(">")) {
                if (start) match(",");
                name += "_"+getCurrent().getText();
                data.add(new Datatype(Datatype.Name2Int(getCurrent().getText()),0,null));
                getNext();
                start = true;
            }
            match(">");

            if (c != null && Datatype.Name2Int(name) == -1) {
                name = compileGenericClass(c, data);
            }
        }
        int dim = 0;
        while (isToken("[")) {
            dim++;
            match("[");
            match("]");
        }
        int id =  Datatype.Name2Int(name);
        if (id == -1) {
            error("Unknown datatype name: '"+name+"'");
        }
        return new Datatype(id,dim,parameters);
    }

    private void overJumpBlock() throws SyntaxException {
        int step = 0;
        if (isToken("end")) {
            match("end");
        } else {
            while (!isToken("end") || step >= 0) {
                
                for (String key: scopeKeyword) {
                    if (getCurrent().getText().equals(key)) {
                        if (key.equals("inline")) {
                            while (!isToken("end")) {
                                getNext();
                            }
                            match("end");
                        } else
                            step++;
                        break;
                    }
                }
                getNext();
                if (getCurrent().getText().equals("end")) {
                    step--;
                }
                
            }
            match("end");
        }
    }
    /**
     * kompiliert eine generische klasse, und zwar in den notwendigen datentyp
     */
    public String compileGenericClass(Class c, LinkedList<Datatype> data) throws SyntaxException {
        if (c.getParser() != this) {
            return c.getParser().compileGenericClass(c, data);
        } else {
            String name = c.getName() + "_templates_";
            for (Datatype d: data) {
                name += "_"+d.toString();
            }

            //schauen ob es die klasse bereits gibt
            boolean alreadyExist = false;
            Class findClass = null;
            for (Class testC: Class.getClasses()) {
                if (name.equals(testC.getName())) {
                    //generics prüfen
                    findClass = testC;
                    alreadyExist = true;
                }
            }
            if (!alreadyExist) {
                Token tmp = getCurrent();
                ListIterator tmp2 = iterator;
                iterator = tokens.listIterator(tokens.indexOf( c.getStartToken() ));
                getNext();
                currentTemplates = data;
                keyWord();
                currentTemplates = null;

                iterator = tmp2;
                current = tmp;

                return name;
            } else {
                return findClass.getName();
            }
        }
     }

    /**
     * Schlüsselwort
     * @return Die Expression mit dem Schlüsselwort
     */
    @SuppressWarnings("empty-statement")
    private Expression keyWord() throws SyntaxException {
        if (isToken("var")) {
            match("var");
            boolean constVar = false;
            if (isToken("const")) {
                constVar = true;
                match("const");
            }
            Datatype standardDatatype = null;
            if (isToken(":")) {
                standardDatatype = datatype(true,false);
            }
            LinkedList<Expression> exprs = new LinkedList<Expression>();
            LinkedList<Variable> vars = new LinkedList<Variable>();
            boolean start = false;
            while (!isToken("\n") && (!isToken(",") || noDoubleDeclaration) && !isToken("to") && !isToken("in")) {
                if (start) {
                    match(",");
                }
                boolean isRef = false;
                if (isToken("ref")) {
                    isRef = true;
                    error("No reference in 'var'");
                }
                String name = getCurrent().getText();
                Datatype datatype = standardDatatype;
                getNext();
                if (isToken(":")) {
                    datatype = datatype(true,false);
                }
                
                
                Variable vari = new Variable(name, datatype);
                if (isRef) vari.reference();
                
                if (inGenerator && currentClass != null && currentClass.getTyp() != Class.IS_EXTENSION) {
                    if (currentClass.getAttibutes() != null) {
                        for (Variable att: currentClass.getAttibutes()) {
                            if (att.getName().equals(vari.getName()) && !att.getDatatype().match(vari.getDatatype())) {
                                error("Generator variable '"+vari.getName()+"' does not match with '"+att.getName()+"'.");
                            }
                        }
                    }
                    boolean st = currentFunction.isStatic();
                    currentClass.newAttribute(false, vari, st);
                    vari.use();
                } else {
                    getScope().newVariable(vari);
                }
                vars.add(vari);
                Expression setExpr = getManager().getEmptyExpression();
                if (isToken("=")) {
                    match("=");
                    vari.use();
                    setExpr = operator(0);
                    if (setExpr.getDatatype().isVoid()) {
                        error("Variable cannot contain void datatype.");
                    }
                    if (setExpr instanceof ExpressionFunctionCall && vari.getDatatype() != null) {
                        ((ExpressionFunctionCall) setExpr).getFunction().setDatatype(vari.getDatatype());
                    }
                    if (datatype == null) {
                        vari.setDatatype(setExpr.getDatatype());
                    }
                    if (!vari.getDatatype().match(setExpr.getDatatype())) {
                        error(vari.getDatatype().generateErrorMsg(setExpr.getDatatype()));
                    }
                } else if (constVar) {
                    error("Constant variable must get a value.");
                }
                if (constVar) vari.setConstant();
                exprs.add(setExpr);
                start = true;
            }
            return getManager().getDeclarationExpression(vars, exprs,inGenerator);
        } else if (isToken("rem")) {
            match("rem");
            overJumpBlock();
            return getManager().getEmptyExpression();
        } else if (isToken("if")) {
            match("if");
            Expression expr = operator(0);
            if (!expr.getDatatype().match(new Datatype(Datatype.BOOLEAN_DATATYPE,0,null))) {
                error(new Datatype(Datatype.BOOLEAN_DATATYPE,0,null).generateErrorMsg(expr.getDatatype()));
            }

            ExpressionBlock block = block(false);

            LinkedList<ExpressionIf> list = new LinkedList<ExpressionIf>();
            while (isToken("elseif")) {
                match("elseif");
                Expression elseExpr = operator(0);
                if (!elseExpr.getDatatype().match(new Datatype(Datatype.BOOLEAN_DATATYPE,0,null))) {
                    error(new Datatype(Datatype.BOOLEAN_DATATYPE,0,null).generateErrorMsg(elseExpr.getDatatype()));
                }
                ExpressionBlock elseIfBlock = block(false);

                list.add(getManager().getIfExpression(elseExpr, elseIfBlock,  null, new LinkedList<ExpressionIf>()));
            }
            ExpressionBlock elseBlock = null;
            if (isToken("else")) {
                match("else");
                elseBlock = block(false);
            }

            return getManager().getIfExpression(expr, block, elseBlock, list);
        } else if (isToken("static")) {
            match("static");
            Expression execute = null;
            ListIterator<Token> tmp = iterator;
            iterator = tokens.listIterator(iterator.nextIndex());
            match("try");
            
            try {
                execute = block(false);
                if (isToken("catch")) {
                    match("catch");
                    overJumpBlock();
                }
            } catch (SyntaxException ex) {
                
                iterator = tokens.listIterator(tmp.nextIndex());
                getNext();
                overJumpBlock();
                if (isToken("\n")) match("\n");
                match("catch");

                if (ex.isDuck()) {
                    Expression tmpBlock = null;
                    try {
                        tmpBlock = block(false);
                    } catch (SyntaxException ex2) {
                        iterator = tmp;
                        getNext();
                        overJumpBlock();
                        if (isToken("\n")) match("\n");
                        match("catch");
                        overJumpBlock();
                        throw ex;
                    }
                    execute = tmpBlock;

                } else {
                    execute = block(false);
                }
            }
            iterator = tmp;
            
            return execute;
        } else if (isToken("try")) {
            match("try");
            String name = getCurrent().getText();
            boolean noName = false;
            if (name.equals("\n")) noName = true;
            LinkedList<ExpressionBlock> catches = new LinkedList<ExpressionBlock>();
            LinkedList<Datatype> datas = new LinkedList<Datatype>();
            ExpressionBlock finallyBlock = null;
            ExpressionBlock mainBlock = block(false);
            while (isToken("catch")) {
                match("catch"); //min. ein catch muss es geben

                if (isToken("\n")) {
                    //finally
                    datas.add(new Datatype(Datatype.VOID_DATATYPE,0,null));
                    catches.add(block(false));
                } else {
                    if (noName) error("No variable name specified.");
                    Datatype data = datatype(false,false);
                    datas.add(data);
                    Scope s = currentScope;
                    Variable var = new Variable(name,data);
                    currentScope = new Scope("",this,currentScope);
                    currentScope.newVariable(var);
                    catches.add(block(false));

                    currentScope = s;
                }
            }
            if (isToken("finally")) {
                match("finally");
                finallyBlock = block(false);
            }

            return getManager().getTryExpression(mainBlock, catches, datas, finallyBlock, name);
        } else if (isToken("throw")) {
            match("throw");
            return getManager().getThrowExpression(operator(0));
        } else if (isToken("select")) {
            match("select");
            boolean tmp = inSelect;
            inSelect = true;
            Expression start = operator(0);
            LinkedList<Expression> conds = new LinkedList<Expression>();
            LinkedList<ExpressionBlock> blocks = new LinkedList<ExpressionBlock>();
            ExpressionBlock def = null;
            while (!isToken("end")) {
                boolean inDef = false;
                while (isToken("\n")) getNext();
                if (isToken("default")) {
                    inDef = true;
                    match("default");
                } else {
                    match("case");
                }
                
                Expression cond = null;
                if (!inDef) cond = operator(0);
                ExpressionBlock block = getManager().getBlockExpression(false);
                while (!isToken("end") && !isToken("case") && !isToken("default")) {
                    while (isToken("\n")) getNext();
                    block.addLine(line(false));
                    while (isToken("\n")) getNext();
                }
                if (!inDef) {
                    conds.add(cond);
                    blocks.add(block);
                } else {
                    def = block;
                }
                while (isToken("\n")) getNext();
            }

            inSelect = tmp;
            match("end");
            return getManager().getSelectExpression(start,conds,blocks,def);
        } else if (isToken("exit")) {
            if (inLoop) {
                match("exit");
                return getManager().getLoopEventExpression(false);
            } else {
                error("Exit must appear in loop.");
            }
        } else if (isToken("continue")) {
            if (inLoop) {
                match("continue");
                return getManager().getLoopEventExpression(true);
            } else {
                error("Loop must appear in loop.");
            }
        } else if (isToken("loop")) {
            Scope tmpScope = currentScope;
            currentScope = new Scope("loopBlock",this,currentScope);
            match("loop");
            Expression start= null;
            boolean bef = inLoop;
            inLoop = true;
            Token last = getCurrent();
            if (isToken("var")) {
                noDoubleDeclaration = false;
                start = keyWord();
                noDoubleDeclaration = true;
            } else {
                start = operator(0);
            }
            
            if (start instanceof ExpressionIdentifier || start instanceof ExpressionDeclaration) {
                //for
                if (isToken(",")) {
                    match(",");
                    Expression cond = operator(0);
                    match(",");
                    Expression inc = operator(0);
                    ExpressionBlock block = block(false);
                    inLoop = bef;
                    currentScope = tmpScope;
                    return getManager().getForExpression(start, cond, inc, block);
                } else if (isToken("to")) {
                    match("to");
                    Expression to = operator(0);
                    Expression step = getManager().getIntegerExpression(1);
                    if (isToken("step")) {
                        match("step");
                        step = operator(0);
                    }
                    ExpressionBlock block = block(false);
                    Token tmp = getCurrent();
                    while (getPrev() != last);
                    getNext();
                    
                    if (isToken("var")) getNext();
                    //braucht den expressionidentifier der variable...
                    //es ist so ein böser hack... das sollte verboten werden
                    ExpressionIdentifier var = null;
                    var = variableExpression();
                    //zurück
                    while (getNext() != tmp);
                    //getNext();
                    inLoop = bef;
                    currentScope = tmpScope;
                    getPrevious();
                    getPrevious();
                    //zusammensetzen
                    return getManager().getSimpleForExpression(var,start, to,step, block);
                } else if (isToken("in")) {
                    match("in");
                    ExpressionIdentifier in = variableExpression();
                    do {
                        if (in.getDatatype() != null) {
                            Class c = Class.getClassByName(in.getDatatype().toString());
                            if (c != null) {
                                //schauen ob es eine invoke methode gibt
                                int find = 0;
                                Function invFunc = null;

                                find = 0;
                                Function itFunc = null;
                                for (Function func: c.getMethods()) {
                                    if (func.getName().equals("invoke") && func.getParameter().size() == 0) {
                                        find ++;
                                        invFunc = func;
                                        func.use();

                                        compileFunction(func,null);
                                    }
                                    if (func.getName().equals("hasnext") && func.getParameter().size() == 0 && func.getDatatype().match(new Datatype(Datatype.BOOLEAN_DATATYPE,0,null))) {
                                        find ++;
                                        func.use();
                                    }
                                    if (func.getName().equals("start") && func.getParameter().size() == 0) {
                                        find ++;
                                        func.use();
                                    }
                                    if (func.getName().equals("iterator") && func.getParameter().size() == 0) {
                                        itFunc = func;
                                    }
                                }
                                if (find != 3 && itFunc != null) {
                                    LinkedList<Function> list = new LinkedList<Function>();
                                    list.add(itFunc);
                                    ExpressionFunctionCall call = functionCall("iterator", list, new LinkedList<Expression>(), true);
                                    call.getParameter().addFirst(in);
                                    in = call;
                                    continue;
                                }


                                if (find == 3) {
                                    Token tmp = getCurrent();
                                    while (getPrev() != last);
                                    getNext();
                                    if (isToken("var")) getNext();
                                    //braucht den expressionidentifier der variable...
                                    //es ist so ein böser hack... das sollte verboten werden

                                    ExpressionIdentifier var = null;
                                    var = variableExpression();
                                    var.getVariable().setDatatype(invFunc.getDatatype());
                                    //zurück
                                    while (getNext() != tmp);
                                    //getNext();
                                    ExpressionBlock block = block(false);
                                    inLoop = bef;
                                    currentScope = tmpScope;
                                    return getManager().getEachInExpression(c,block, var, in, start);
                                } else {
                                    error("Could not find method 'invoke', 'hasnext' or 'start'.");
                                }
                            } else {
                                error("Cannot iterate through primitve datatype.");
                            }
                        } else {
                            error("Cannot specify datatype.");
                        }
                        break;
                    } while (true);
                } else {
                    ExpressionBlock block = block(false);
                    inLoop = bef;
                    currentScope = tmpScope;
                    return getManager().getWhileExpression(start, block);
                }
            } else {
                if (!start.getDatatype().match(new Datatype(Datatype.BOOLEAN_DATATYPE,0,null))) {
                    error("loop expression must be boolean.");
                }
                ExpressionBlock block = block(false);
                return getManager().getWhileExpression(start, block);
            }
        } else if (isToken("import")) {
            match("import");
            String name = getCurrent().getText();
            getNext();
            String path = "";
            if (isToken(".")) {
                match(".");
                //schaue in den Projekordner
                path = filePath.substring(0,filePath.lastIndexOf("/"))+name+"."+getCurrent().getText();
            } else if (name.endsWith("\"") && name.startsWith("\"")) {
                path = filePath.substring(0,filePath.lastIndexOf("/"))+"/"+name.replace("\"", "");
            } else {
                //schaue in den lumpy ordner
                path = System.getProperty("user.dir")+"/modules/"+name+".ly";
            }
            String text = readFile(path);
            Import imp = null;
            for (Import imp2: Main.imports) {
                if ((imp2.getText()!= null && imp2.getText().equals(text)) || path.equals(imp2.getPath())) {
                    imp = imp2;
                    break;
                }
            }
            
            if (imp == null) {
                imp = newImport(path);
                if (imp.getPath().endsWith(".ly") && imp.getParser() == null) {
                    imp.setText(text);
                    Parser parser = new CParser(new Lexer(imp.getText()),new ExpressionManagerC(),imp.getPath());
                    imp.setParser(parser);
                    //if (!dont) {
                    //    Import imp2 = new Import(parser.getPath());
                    //    imp2.setParser(this);
                    //    Main.imports.add(imp2);
                    //}
                    //importParser(imp2);
                }
            }
            
            return getManager().getEmptyExpression();
        } else if (isToken("class") || isToken("extension") || isToken("struct")) {
            
            int mode;
            if (isToken("class")) {
                match("class"); 
                mode = Class.IS_CLASS;
            } else if (isToken("extension")) {
                match("extension");
                mode = Class.IS_EXTENSION;
            } else {
                match("struct");
                mode = Class.IS_STRUCT;
            }
            boolean isFinal = false, isAbstract = false;
            if (isToken("final")) {
                isFinal = true;
                match("final");
            }
            if (isToken("abstract")) {
                isAbstract = true;
                match("abstract");
            }
            Token startToken = getCurrent();
            boolean baseClass = false;
            String name = "";
            HashMap<String, String> tmpReplacer = replacer;
            Class tmpClass = currentClass;
            boolean tmpGenerator = inGenerator;
            inGenerator = false;
            replacer = null;
            Class c = null;
            if (isToken("<")) {
                if (mode != Class.IS_CLASS) error("No generic extension/struct.");
                match("<");
                boolean start = false;
                LinkedList<String> types = new LinkedList<String>();
                while (!isToken(">")) {
                    if (start) match(",");
                    types.add(getCurrent().getText());
                    getNext();
                    start = true;
                }
                match(">");
                c = Class.getClassByName(getCurrent().getText());
                //template
                if (currentTemplates == null) {
                    baseClass = true;
                    name = getCurrent().getText();
                } else {
                    replacer = new HashMap<String,String>();
                    baseClass = false;
                    int i = 0;
                    for (String str: types) {
                        replacer.put(str, currentTemplates.get(i).toString());
                        i++;
                    }
                    
                    String n ="_templates_";
                    for (String data: replacer.values()) {
                        n += "_"+data;
                    }
                    


                    name = getCurrent().getText()+n;

                    Class.newClass(new Class(name,startToken,this));
                }
            } else {
                name = getCurrent().getText();
            }
            Datatype thisDatatype = null;
            //name = getCurrent().getText() + name;
            if (mode == Class.IS_EXTENSION) {
                thisDatatype = datatype(false,false);
                c = new Class(thisDatatype.toString(),startToken,this);
                Class.newClass(c);
            } else {
                c = Class.getClassByName(name);
            }
            if (!baseClass) {
                c.setReplacer(replacer);
            }
            
            currentClass = c;
            currentClass.setTyp(mode);
            classes.add(c);
            getNext();

            if (isAbstract && isFinal) {
                error("Class cannot be final ans abstract.");
            }
            if (isFinal) {
                if (mode == Class.IS_CLASS) {
                    c.setMode(Class.IS_FINAL);
                } else {
                    error("Only class can be final: "+c.getName());
                }
            }
            if (isAbstract) {
                if (mode == Class.IS_CLASS) {
                    c.setMode(Class.IS_ABSTRACT);
                } else {
                    error("Only class can be abstract: "+c.getName());
                }
            }
            if (mode == Class.IS_CLASS) {
                Class exClass = null;
                if (isToken("<")) { //vererbung
                    if (mode != Class.IS_CLASS) error("No inherit in extension/struct.");
                    match("<");


                    String ex = getCurrent().getText();
                    exClass = Class.getClassByName(ex);
                    if (exClass == null) {
                        error("Unknown class name '"+ex+"'");
                    }
                    getNext();
                } else {
                    if (!c.getName().equals("object")) {
                        exClass = Class.getClassByName("object");
                        if (exClass == null) error("Please define 'object'.");
                    }
                }

                if (exClass != null) {
                    c.inherits(exClass);
                    
                }
            } else if (isToken("<")) error("extension/struct cannot inherit.");
            if (isToken("=") && mode == Class.IS_STRUCT) {
                match("=");
                c.setSynonym(getCurrent().getText().replace("\"", ""));
                getNext();
            }
            if (mode != Class.IS_EXTENSION) match("\n");
            Scope tmp = currentScope;
            currentScope = new Scope(c.getName(),this, null);
            if (thisDatatype == null) thisDatatype = c;
            

            Variable thisVar = new Variable("this",thisDatatype);
            Variable superVar =  null;
            currentScope.newVariable(thisVar);
            if (c.getInherit() != null) {
                superVar = new Variable("super",c.getInherit());
                currentScope.newVariable(superVar);
            }
            
            c.setScope(currentScope);
            for (Function func: tmp.getFunctions()) {
                currentScope.getFunctions().add(func);
            }
            if (baseClass) {
                overJumpBlock();
            }
            boolean tmpStatic = isStatic;
            while (!isToken("end") && !baseClass) {
                boolean isPublic = false;
                boolean gen = false;
                isStatic = false;
                if (mode == Class.IS_CLASS) {
                    if (isToken("private")) {
                        match("private");
                    } else if (isToken("public")) {
                        match("public");
                        isPublic = true;
                    } else {
                        error("Expecting public/private.");
                    }
                }
                if (isToken("static")) {
                    match("static");
                    isStatic = true;
                }
                if (Class.IS_CLASS != mode) {
                    isPublic = true;
                }
                if (isToken("var") && mode != Class.IS_EXTENSION) {
                    ExpressionDeclaration dec = (ExpressionDeclaration)keyWord();
                    for (Variable var: dec.getDecVar()) {
                        for (Variable v: c.getAttibutes()) {
                            if (var.getName().equals(v.getName())) {
                                error("Attribute '"+var.getName()+"' already exists in class.");
                            }
                        }
                        c.newAttribute(isPublic, var, isStatic);
                    }
                    c.getStartDecs().add(dec);
                } else if (isToken("property")) {
                    match("property");
                    if (mode == Class.IS_EXTENSION) {
                        String propName = getCurrent().getText();
                        CodeFunction get = null;
                        getNext();
                        Datatype data = null;
                        if (isToken(":")) data = datatype(true, false);
                        
                        get = new CodeFunction("get_"+propName,data,new Scope("",this,null));
                        get.setStartToken(getCurrent());
                        get.setTyp(CodeFunction.IS_PROPERTY_GET);
                        get.use();
                        c.newMethod(isPublic, get, thisVar, superVar,isStatic);
                        getHyperScope().newFunction(get);

                        //compileFunction(get,null);

                        if (get.getDatatype() != null) {
                            data = get.getDatatype();
                        }

                        overJumpBlock();
                        Property prop = new Property(propName,data,null,get,null);
                        c.newProperty(prop, false);
                    } else {
                        LinkedList<Variable> indexer = null;
                        if (isToken("[")) {
                            indexer = new LinkedList<Variable>();
                            while (isToken("[")) {
                                match("[");
                                String indexerName = getCurrent().getText();
                                getNext();
                                Datatype indexerData = null;
                                if (isToken(":")) {
                                    indexerData = datatype(true, false);
                                }
                                indexer.add(new Variable(indexerName,indexerData));
                                match("]");
                            }
                        }
                        String propName = getCurrent().getText();
                        for (Property p: c.getPropertys()) {
                            if (p.getName().equals(propName)) {
                                error("Property '"+p.getName()+"' already exists.");
                            }
                        }
                        getNext();

                        Datatype data = null;
                        if (isToken(":")) {
                            data = datatype(true,false);
                        }

                        CodeFunction set = null, get = null;



                        while (!isToken("end")) {
                            if (isToken("get")) {
                                match("get");



                                if (get != null) error("Duplicate get property.");

                                get = new CodeFunction("get_"+propName,data,new Scope("",this,null));
                                get.setStartToken(getCurrent());
                                get.setTyp(CodeFunction.IS_PROPERTY_GET);
                                if (indexer != null) {
                                    for (Variable index:indexer) {
                                        get.getParameter().add(index);
                                    }
                                }
                                get.use();
                                c.newMethod(isPublic, get, thisVar, superVar,isStatic);
                                getHyperScope().newFunction(get);

                                //compileFunction(get,null);

                                if (get.getDatatype() != null) {
                                    data = get.getDatatype();
                                }

                                overJumpBlock();
                            } else if (isToken("set")) {
                                match("set");

                                if (set != null) error("Duplicate set property.");

                                set = new CodeFunction("set_"+propName,new Datatype(Datatype.VOID_DATATYPE,0,null),new Scope("",this,null));
                                Variable v = set.newParameter(this,"value", null,null);
                                set.setStartToken(getCurrent());
                                set.setTyp(CodeFunction.IS_PROPERTY_SET);
                                set.use();
                                if (indexer != null) {
                                    for (Variable index:indexer) {
                                        set.getParameter().add(index);
                                    }
                                }
                                c.newMethod(isPublic, set, thisVar, superVar,isStatic);
                                getHyperScope().newFunction(set);

                                //compileFunction(set,null);
                                overJumpBlock();

                                if (data == null) data = v.getDatatype();
                                //if (v.getDatatype() == null) {
                                //    error("Cannot resolve variable datatype for set property "+propName);
                                //}
                                //if (!v.getDatatype().match(data)) {
                                //    error(v.getDatatype().generateErrorMsg(data));
                                //}
                            } else {
                                match("\n");
                            }
                        }
                        LinkedList<Datatype> datas = new LinkedList<Datatype>();
                        if (indexer != null) {
                            for (Variable v: indexer) {
                                datas.add(v.getDatatype());
                            }
                        }
                        Property p = new Property(propName,data,set,get,datas);
                        if (propName.equals("this")) {
                            if (isStatic) error("Static class cannot contain 'this' property.");
                            if (c.getProperty() != null) error("Duplicate this property.");
                            c.setProperty(p);
                        } else {
                            c.newProperty(p,isStatic);
                        }

                        match("end");
                    }
                } else if (isToken("generator") && mode == Class.IS_CLASS) {
                    match("generator");
                    if (gen) error("Class can only have maximal one generator.");
                    gen = true;
                    Variable v = new Variable("status",new Datatype(Datatype.INT_DATATYPE,0,null));
                    v.use();
                    c.newAttribute(false, v,isStatic);
                    ExpressionIdentifier thisExpr = null;
                    if (isStatic) {
                        thisExpr = getManager().getStaticAccessExpression(c);
                    } else {
                        thisExpr = getManager().getVariableExpression(thisVar);
                    }

                    LinkedList<Variable> tmpVar = new LinkedList<Variable>();
                    tmpVar.add(v);
                    LinkedList<Expression> tmpDec = new LinkedList<Expression>();
                    tmpDec.add(getManager().getIntegerExpression(-1));
                    
                    c.getStartDecs().add(getManager().getDeclarationExpression(tmpVar, tmpDec, false));


                    Scope s = new Scope("",this,null);
                    CodeFunction func = new CodeFunction("start",new Datatype(Datatype.VOID_DATATYPE,0,null),s);
                    ExpressionBlock block = getManager().getBlockExpression(false);
                    

                    block.addLine(getManager().getAssignmentExpression(v, getManager().getAccessExpression(thisExpr, getManager().getVariableExpression(v)), getManager().getIntegerExpression(0)));
                    func.setBlock(block);
                    c.newMethod(isPublic, func, thisVar, superVar,isStatic);
                    funcDecs.add(getManager().getFunctionDeclarationExpression(block, func));
                    getHyperScope().newFunction(func);


                    s = new Scope("",this,null);
                    func = new CodeFunction("hasnext",new Datatype(Datatype.BOOLEAN_DATATYPE,0,null),s);
                    block = getManager().getBlockExpression(false);
                    Operator o = null;
                    for (Operator op: operators) {
                        if (op.getName().equals("!=")) {
                            o = op;
                            break;
                        }
                    }
                    block.addLine(getManager().getReturnExpression(getManager().getOperatorExpression(o, getManager().getAccessExpression(thisExpr, getManager().getVariableExpression(v)), getManager().getIntegerExpression(-1))));
                    func.setBlock(block);
                    c.newMethod(isPublic, func, thisVar, superVar,isStatic);
                    funcDecs.add(getManager().getFunctionDeclarationExpression(block, func));
                    getHyperScope().newFunction(func);


                    Datatype data = datatype(true,true);
                    s = new Scope("",this,null);
                    s.setClass(c);
                    func= new CodeFunction("invoke",data,s);
                    func.setAsGenerator();
                    func.use();
                    match("(");
                    boolean start = false;
                    while (!isToken(")")) {
                        if (start) {
                            match(",");
                        }
                        name = getCurrent().getText();
                        data = null;
                        getNext(); //name
                        if (isToken(":")) {
                            data = datatype(true,false);
                        }
                        func.newParameter(this,name, data,null);
                        start = true;
                    }
                    
                    match(")");
                    func.setStartToken(getCurrent());
                    c.newMethod(isPublic, func,thisVar,superVar,isStatic);
                    getHyperScope().newFunction(func);
                    func.notCallable();

                    
                    overJumpBlock();
                    
                } else if (isToken("function")) {
                    boolean tmpInExtern = inExtern;
                    inExtern = false;
                    if (isStatic) {
                        currentClass = null;
                    }
                    Expression expr = keyWord();
                    currentClass = c;
                    inExtern = tmpInExtern;

                    expr.setLine(getCurrent().getLine());
                    if (c.getTyp() != Class.IS_CLASS) {
                        //lastFunc.use();
                    }
                    if (lastFunc.getTyp() == CodeFunction.IS_CONSTRUCT && mode != Class.IS_CLASS) {
                        error("struct/extension cannot have any constructor.");
                    }
                    for (Function func: c.getMethods()) {
                        if (func instanceof CodeFunction) {
                            if (((CodeFunction)func).getScope().getOwnerClass() == c) {
                                if (func.match(lastFunc)) {
                                    error("Duplicate method '"+lastFunc.generateFuncName()+"'");
                                }
                            }
                        }
                    }
                    c.newMethod(isPublic, lastFunc,thisVar,superVar,isStatic);


                    String tmpName = lastFunc.getName();
                    lastFunc.setName(c.getName()+"_"+name);
                    getHyperScope().newFunction(lastFunc);
                    lastFunc.setName(tmpName);

                } else {
                    if (mode == Class.IS_EXTENSION) {
                        error("Expecting function.");
                    } else if (mode == Class.IS_STRUCT) {
                        error("Expecting var, function or property.");
                    } else {
                        error("Expecting var, function, generator or property.");
                    }
                }
                if (!isToken("end")) match("\n");
                while (isToken("\n")) getNext();
            }
            currentScope = tmp;
            if (!baseClass) {
                match("end");
            }
            currentClass = tmpClass;
            replacer = tmpReplacer;
            inGenerator = tmpGenerator;
            isStatic = tmpStatic;
            
            return getManager().getEmptyExpression();
        } else if (isToken("function") || isToken("operator")) {
            boolean operator = false;
            if (isToken("operator")) {
                match("operator");
                operator = true;
            } else {
                match("function");
            }
            
            boolean isAbstract = false, isFinal = false;
            if (currentClass != null) {
                if (isToken("abstract")) {
                    match("abstract");
                    isAbstract = true;
                } else if (isToken("final")) {
                    match("final");
                    isFinal = true;
                }
            }
            
            boolean anonymous = false;
            if (isToken(":")) {
                anonymous = true;
            }
            LinkedList<Datatype> generics;
            if (isToken("<")) {
                if (operator) error("No templates with operator overloading.");
                if (anonymous) error("Anonymous functions, cannot have templates.");
                match("<");
                generics = new LinkedList<Datatype>();
                boolean start = false;
                while(!isToken(">")) {
                    if (start) match(",");
                    generics.add(datatype(false,false));
                    start = true;
                }
                match(">");
                if (currentTemplates != null) {

                } else {

                }
            }
            String name = "";
            if (anonymous) {
                name ="__anofunc__"+anonFunc+"_";
                anonFunc++;
            } else {
                name = getCurrent().getText();
                if (operator) {
                    boolean opExist = false;
                    for (Operator op: operators) {
                        if (op.getName().equals(name)) {
                            opExist = true;
                        }
                    }
                    if (!opExist) error("Unknown operator '"+name+"'");
                }
                getNext(); //name
            }
            if (currentClass != null && operator) error("No operator overloading in class.");
            Datatype data = null;
            if (currentClass != null && name.equals("new")) {
                if (isToken(":")) {
                    error("Constructor has no datatype.");
                }
                data = new Datatype(currentClass,0,null);
            } else {
                if (isToken(":")) data = datatype(true,true);
            }
            Function func;
            lastFunc = null;
            if (!inExtern) {
                func = new CodeFunction(name,data, new Scope(name,this,null));
                if (!operator) {
                    func.setSynonym("function_"+func.getName());
                } else {
                    for (Operator op: operators) {
                        if (op.getName().equals(func.getName())) {
                            op.addOverload((CodeFunction)func);
                            func.setSynonym("operator_"+op.getRealName());
                            break;
                        }
                    }
                }
                lastFunc = (CodeFunction)func;
                if (anonymous) lastFunc.setTyp(CodeFunction.IS_ANONYME);

                if (isAbstract)
                    ((CodeFunction)func).setMode(Class.IS_ABSTRACT);
                else if (isFinal)
                    ((CodeFunction)func).setMode(Class.IS_FINAL);
            } else {
                func = new Function(name,data);
            }
            if (anonymous) func.use();
            match("(");
            boolean start = false;
            while (!isToken(")")) {
                if (start) {
                    match(",");
                }
                boolean refParam = false;
                if (isToken("ref")) {
                    if (!inExtern) {
                        match("ref");
                        refParam = true;
                    } else {
                        error("Extern functions cannot have call by reference parameters.");
                    }
                }
                name = getCurrent().getText();
                data = null;
                getNext(); //name
                if (isToken(":")) {
                    data = datatype(true,false);
                }

                Expression opt = null;
                if (isToken("=")) {
                    if (operator) error("No default parameters in operator.");
                    match("=");
                    opt = operator(0);
                }

                Variable param = func.newParameter(this,name, data, opt);
                if (refParam) param.reference();
                start = true;
            }
            match(")");
            if (func.getParameter().size() != 2 && operator) error("operator needs two parameters.");
            if (isToken("=")) {
                if (anonymous) error("Anonymous function cannot have a synonym.");
                match("=");
                func.setSynonym(getCurrent().getText().replace("\"", ""));
                getNext();
            }
            if (isToken("force")) {
                match("force");
                func.use();
                
            }
            if (!inExtern) ((CodeFunction)func).setStartToken(getCurrent());

            match("\n");

            

            if (!inExtern && !isAbstract) {

                overJumpBlock();
            }
            if (currentClass == null && !anonymous) getHyperScope().newFunction(func);
            if (anonymous) {
                getHyperScope().getFunctions().add(func);
                compileFunction(func,null);
                return getManager().getAnonymousFuncExpression((CodeFunction)func);
            } else {
                return getManager().getEmptyExpression();
            }
        } else if (isToken("yield")) {
            if (inGenerator) {
                match("yield");
                if (isToken("break")) {
                    match("break");
                    return getManager().getYieldExpression();
                } else {
                    Expression ret = keyWord();
                    return getManager().getYieldExpression(ret);
                }
            } else {
                error("Cannot call 'yield' in non generator.");
            }
        } else if (isToken("increment")) {
            boolean inc = isToken("increment");
            match("increment");
            return getManager().getIncDecExpression(variableExpression(), inc);
        } else if (isToken("return")) {
            match("return");

            Datatype data = currentFunction.getDatatype();
            Expression expr = null;
            if ((data == null || !data.isVoid()) && !isToken("\n")) {
                expr = operator(0);
                if (data == null) {
                    currentFunction.setDatatype(expr.getDatatype());
                    data = expr.getDatatype();
                }
                if (!data.match(expr.getDatatype())) {
                    error(data.generateErrorMsg(expr.getDatatype()));
                }
            }
            return getManager().getReturnExpression(expr);
        } else if (isToken("language")) {
            match("language");
            if (isToken(getLanguageName())) {
                getNext();
                return block(false);
            } else {
                int step = 0;
                while (!getCurrent().getText().equals("end") || step >= 0) {
                    getNext();
                    for (String key: scopeKeyword) {
                        if (getCurrent().getText().equals(key)) {
                            step++;
                            break;
                        }
                    }
                    if (getCurrent().getText().equals("end")) {
                        step--;
                    }
                }
                return getManager().getEmptyExpression();
            }
        } else if (isToken("extern")) {
            inExtern = true;
            match("extern");
            if (isToken("do")) {
                match("do");
            }
            while (!isToken("end")) {
                if (isToken("function") || isToken("struct")) {
                    keyWord();
                } else {
                    match("\n");
                }
            }
            match("end");
            inExtern = false;
            return getManager().getEmptyExpression();
        }
        return null;
    }
    /**
     * Gültiger Datentyp?
     */
    public void isValidDatatype(Token tok) throws SyntaxException {
        if (Datatype.Name2Int(tok.getText()) == -1 || tok.getText().equals("null")) {
            error("Invalid Datatype '" + tok.getText() + "'"); //Datentyp
        }
    }
    /**
     * Das aktuelle token
     */
    public Token getCurrent() {
        if (replacer != null) {
            if (replacer.containsKey(current.getText())) {
                return new Token(replacer.get(current.getText()),current.getWholeLine(),current.getLine(),current.getPos());
            }
        }
        return current;
    }
    /**
     * Vorige token
     * @return
     */
    public Token getPrevious() {
        return previous;
    }
    /**
     * Stimmt der aktuelle Token mit dem gegebenen String überein
     */
    public void match(String token) throws SyntaxException {
        if (!current.getText().equals(token)) {
            error("Unexpected token, expecting '" + token + "'");
        }
        getNext();
    }
    /**
     * Das vorige Token
     * @return das Token
     */
    public Token getPrev() throws SyntaxException {
        if (iterator.hasPrevious()) {
            previous = current;
            current = iterator.previous();
        } else {
            error("Unexpected begin of file.");
        }
        return getCurrent();
    }

    /**
     * Das nächste Token
     * @return das Token
     */
    public Token getNext() throws SyntaxException {
        if (iterator.hasNext()) {
            previous = current;
            current = iterator.next();
        } else {
            error("Unexpected end of file.");
        }
        return getCurrent();
    }

    /**
     * Ist das aktuelle Token ident mit dem übergegebenen Parameter
     */
    public boolean isToken(String param) {
        return current.getText().equals(param);
    }

    /**
     * Wirft eine Fehlermeldung
     */
    public void error(String msg) throws SyntaxException {
        Token current = this.current;
        if (current == null) current = new Token("Unknown","Unknown line",41,42);
        SyntaxException ex = new SyntaxException(this, msg, current,false);
        System.out.print(ex.toString());

        SyntaxException.wasError = true;
        throw ex;
    }
    /**
     * Wirft eine Fehlermeldung
     */
    public void error(String msg,boolean duck) throws SyntaxException {
        Token current = this.current;
        if (current == null) current = new Token("Unknown","Unknown line",41,42);
        SyntaxException ex = new SyntaxException(this, msg, current,duck);
        System.out.print(ex.toString());

        SyntaxException.wasError = true;
        throw ex;
    }

    /**
     * Gibt den ExpressionManager zurück
     */
    public ExpressionManager getManager() {
        return man;
    }

    /**
     * Gibt alle Funktionsdeklarationen zurück
     */
    public LinkedList<ExpressionFunctionDeclaration> getFunctionDeclaration() {
        return funcDecs;
    }

    /**
     * Gibt den Lexer zurück
     */
    public Lexer getLexer() {
        return lexer;
    }

    /**
     * Generiert den Code
     */
    public abstract void generate(String template, boolean isMain);

    /**
     * Führt das backend aus
     */
    public abstract void backend();
    /**
     * Linkt das Programm
     */
    public abstract void link(LinkedList<Import> other);
    /**
     * Der generierte Code
     */
    public abstract String getGeneratedCode();
    /**
     * ausführen
     */
    public abstract void execute();
    /**
     * Name
     */
    public abstract String getLanguageName();
    /**
     * Aufrücken
     */
    public void identUp() {
        ident++;
    }

    /**
     * Einrücken
     */
    public void identDown() {
        ident--;
    }

    /**
     * Neue Zeile
     */
    public String newLine() {
        String str = "\n";
        for (int i = 0; i < ident; i++) {
            str += "\t";
        }
        return str;
    }

    /**
     * Gibt den aktuellen Scope zurück
     */
    public Scope getScope() {
        return currentScope;
    }

    

    /**
     * Setzt den aktuellen Token (achtung, vorsichtig verwenden)
     */
    public void setToken(Token tok) {
        this.current = tok;
    }
    /**
     * Bereits kompiliert?
     */
    public boolean isAlreadyCompiled() {
        return alreadyCompiled;
    }
    /**
     * Der Dateipfad
     * @return
     */
    public String getPath() {
        return filePath;
    }
    /**
     * Alle im Skript definiete variablen
     * @return
     */
     public LinkedList<Class> getClasses() {
         return classes;
     }
    /**
     * liest einen string aus einer datei
     * @param path
     * @return
     */
    public String readFile(String path) throws SyntaxException {
        String input = "";
        BufferedReader reader = null;
        try {
           reader = new BufferedReader(new FileReader(path));
           String tmp = reader.readLine()+"\n";
           while (tmp != null) {
               input += tmp+"\n";
               tmp = reader.readLine();
           }
           reader.close();
        } catch (IOException ex) {
            error("File not found: "+path);
            ex.printStackTrace();
        }
        return input;
    }

    /**
     * Gibt die aktuelle Klasse zurück
     */
    public Class getCurrentClass() {
        return currentClass;
    }

    /**
     * Ist es im generator
     */
    public boolean isInGenerator() {
        return inGenerator;
    }

    /**
     * Gibt den "Hyperscope" zurück. In diesem Scope sind _alle_ funktionen drinnen
     */
    public Scope getHyperScope() {
        return hyperScope;
    }
}
