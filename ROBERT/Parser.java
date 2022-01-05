import java.util.*;
/**
 * Parst den Quellcode, dabei werden Syntaktische Fehler gefunden
 * Außerdem wird der Code in die polnische Notation umgewandelt und die Datentypen der Variablen festgelegt.
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class Parser {
    private boolean registerParameter=false;
    private Token currentToken;
    private LinkedList<Variable> variableList; //Alle Lokalen Variablen
    private LinkedList<Variable> parameterList; //Alle Parameter
    private LinkedList<ClassTemplate> templateList; //Alle Klassen
    private ArrayList<Token> token;
    private ArrayList<Token> newToken;
    private Iterator iterator;
    private boolean inFunction=false;
    private int ifCount=0;
    
    public Parser(ArrayList<Token> token) {
        this.token=token;
        newToken=new ArrayList<Token>();
        templateList=new LinkedList<ClassTemplate>();
    }
    public void parse() {
        ifCount=0;
        inFunction=false;
        iterator=token.iterator();
        getToken();
        block();
        token.clear();
        token.addAll(newToken);
    }
    public Token[] getAllToken() {
        Token[] newToken=new Token[token.size()];
        Iterator it=token.iterator();
        for(int i=0;i<token.size();i++) {
            newToken[i]=(Token)it.next();
            newToken[i].line=i;
        }
        return newToken;
    }
    private void block() {
        if (parameterList!=null && registerParameter) {
            registerParameter=false;
            newToken.add(new TokenUnknown("___PARAMETERCOUNT"));
            newToken.add(new TokenInteger(parameterList.size()));
            for (Variable var:parameterList) {
                newToken.add(new TokenUnknown(var.getDatatype()));
                newToken.add(new TokenUnknown(var.getName()));
            }
        }
        if (currentToken.toString().equals("->")) {
            match("->");
            expression();
            return;
        } else if (currentToken.toString().equals("begin"))  match("begin");
        while (iterator.hasNext()) {
            if (currentToken.toString().equals("begin")) {
                this.add();
                block();
            }
            if (currentToken.toString().equals("end")) {
                this.add();
                getToken();
                return;
            }
            expression();
        }
    }
    private void add() {
        newToken.add(currentToken);
    }
    private String expression() {
        String type=addSub();
        while(currentToken.toString().equals("<") || currentToken.toString().equals(">") || currentToken.toString().equals("<=") || currentToken.toString().equals(">=") || currentToken.toString().equals("==")) {
            Token tmp=currentToken;
            getToken();
            String type2=addSub();
            //if (type.equals("void")) type=type2;
            if (!type.equals(type2) || type.equals("string") || type2.equals("string")) error("Unexpected Datatype ['"+type+"', '"+type2+"']");
            newToken.add(tmp);
        }
        return type;
    }
    private String addSub() {
        String type=term();
        while(currentToken.toString().equals("+") || currentToken.toString().equals("-")) {
            Token tmp=currentToken;
            getToken();
            String type2=term();
            //if (type.equals("void")) type=type2;
            if ((!type.equals(type2)  || type.equals("string") || type2.equals("string")) && tmp.toString().equals("-")) error("Unexpected Datatype ['"+type+"', '"+type2+"']");
            newToken.add(tmp);
        }
        return type;
    }
    private String term() {
        String type=factor();
        while(currentToken.toString().equals("*") || currentToken.toString().equals("/")) {
            Token tmp=currentToken;
            getToken();
            String type2=factor();
            //if (type.equals("void")) type=type2;
            if (!type.equals(type2) || type.equals("string") || type2.equals("string")) error("Unexpected Datatype ['"+type+"', '"+type2+"']");
            newToken.add(tmp);
        }
        return type;
    }
    private String factor() {
        if (currentToken.toString().equals(",")) return "";
        String text;
        text=keyWord();
        if (!text.equals("")) return text;
        text=function();
        if (!text.equals("")) return text;
        text=variable();
        if (!text.equals("")) return text;
        if (currentToken.toString().equals("not")) {
            Token tmp=currentToken;
            getToken();
            String typ=expression();
            if (typ.equals("string")) error("Unexpected string");
            newToken.add(tmp);
            return typ;
        } else if (currentToken.toString().equals("&")) {
            Token tmp=currentToken;
            getToken();
            String typ=expression();
            newToken.add(tmp);
            return typ;
        }
        if (currentToken.toString().equals("(")) {
            match('(');
            String tmp=expression();
            match(')');
            return tmp;
        } else if (currentToken.toString().equals("[")) {
            match('[');
            String tmp=expression();
            match(']');
            return tmp;
        } else if (currentToken.toString().equals("-")) {
            Token tmp=currentToken;
            getToken();
            expression();
        } else {
            if (currentToken instanceof TokenInteger) {
                this.add();
                getToken();
                return "int";
            } else if (currentToken instanceof TokenFloat) {
                this.add();
                getToken();
                return "float";
            } else if(currentToken instanceof TokenString) {
                this.add();
                getToken();
                return "string";
            } else {
                error("Unexpected symbol");
            }    
        }
        return "void";
    }
    private void match(char character) {
        if (currentToken.toString().equals(character+"")) {
            getToken();
        } else error("Expecting '"+character+"'.");
    }
    private void match(String text) {
        if (currentToken.toString().equals(text)) {
            getToken();
        } else error("Expecting '"+text+"'.");
    }
    private void error(String msg) {
        String token="";
        if (currentToken!=null) token=currentToken.toString();
        System.err.println("Compile error in line '"+(currentToken.line)+"' at token '"+token+"': "+msg);
        System.exit(0);
    }
    private void getToken() {
        if (!iterator.hasNext()) error("Unexpected end of file.");
        currentToken=(Token)iterator.next();
    }
    private String function() {
        if (currentToken instanceof TokenUnknown) {
            Function[] allFunc=Function.createFunction();
            for (Function func:allFunc) {
                if (func.getName().equals(currentToken.toString())) {
                    currentToken=new TokenFunction(func);
                }
            }
        }
        if (currentToken instanceof TokenFunction) {
            Function func=((TokenFunction)currentToken).getFunction();
            Token tmp=currentToken;
            getToken();
            match('(');
            Iterator iterator=func.getParameter().iterator();
            while(iterator.hasNext()) {
                String type1=(String)iterator.next();
                String type2=expression();
                if (!type1.equals(type2) && !type1.equals("")) {
                    error("Unexpected datatype ['"+type1+"', '"+type2+"'] ");
                }
                if (iterator.hasNext()) {
                    match(',');
                }
            }
            match(')');
            newToken.add(tmp);
            if (currentToken.toString().equals("[")) {
                while(currentToken.toString().equals("[")) {
                    match("[");
                    expression();
                    match("]");
                }
                newToken.add(new TokenUnknown("___GETPOPARRAY"));
            }
            return func.getDatatype();
        } else return "";
    }
    private String keyWord() {
        if (currentToken instanceof TokenKeyword) {
            TokenKeyword token=(TokenKeyword)currentToken;
            if (token.toString().equals("if")) {
                Token tmp=currentToken;
                getToken();
                if (expression().equals("string")) match("Unexpected datatype, expecting ['int'/'float','string']");
                newToken.add(tmp);
                block();
                
                if (currentToken.toString().equals("else")) {
                    this.add();
                    tmp=currentToken;
                    getToken();
                    if (currentToken.toString().equals("if")) {
                        expression();
                        newToken.add(new TokenKeyword("end"));
                    } else {
                        block();
                    }
                }
                ifCount++;
            } else if (token.toString().equals("break")) {
                this.add();
                getToken();
            } else if (token.toString().equals("do")) {
                newToken.add(new TokenKeyword("forever"));
                getToken();
                block();
                //Letztes end löschen
                newToken.remove(newToken.size()-1);
                match("while");
                expression();
                newToken.add(new TokenOperator("not"));
                newToken.add(new TokenKeyword("if"));
                newToken.add(new TokenKeyword("break"));
                newToken.add(new TokenKeyword("end"));
                newToken.add(new TokenKeyword("end")); //Letztes End wieder hinzufügen
            } else if (token.toString().equals("while")) {
                newToken.add(new TokenKeyword("forever"));
                getToken();
                if (expression().equals("string")) match("Unexpected datatype, expecting ['int'/'float','string']");
                newToken.add(new TokenOperator("not"));
                newToken.add(new TokenKeyword("if"));
                newToken.add(new TokenKeyword("break"));
                newToken.add(new TokenKeyword("end"));
                block();
            } else if (token.toString().equals("for")) {
                getToken();
                match('(');
                expression();
                newToken.add(new TokenKeyword("forever"));
                match(',');
                expression();
                newToken.add(new TokenOperator("not"));
                newToken.add(new TokenKeyword("if"));
                newToken.add(new TokenKeyword("break"));
                newToken.add(new TokenKeyword("end"));
                match(',');
                expression();
                match(')');
                block();
            } else if (token.toString().equals("forever")) {
                this.add();
                getToken();
                block();
            } else if (token.toString().equals("dim")) {
                Token tmp=currentToken;
                getToken();
                Variable var=null;
                LinkedList<Variable> variableList=getVariableList();
                for (Variable vari:variableList) {
                    if (vari.getName().equals(currentToken.toString())) {
                        var=vari;
                        break;
                    }
                }
                if (var==null) error("Unknown Variable '"+currentToken.toString()+"'");
                Token tmp2=currentToken;
                getToken();
                for (int i=0;i<var.dimCount;i++) {
                    match('[');
                    expression();
                    match(']');
                }
                newToken.add(tmp);
                newToken.add(new TokenInteger(var.dimCount-1));
                newToken.add(tmp2);
            } else if (token.toString().equals("definition")) {
                this.add();
                getToken();
                match("begin");
                variableList=new LinkedList<Variable>();
                while(!currentToken.toString().equals("end")) {
                    if (currentToken.toString().equals("func")) {
                        this.add();
                        getToken();
                        if (currentToken.toString().equals("int") || currentToken.toString().equals("float") || currentToken.toString().equals("string") || currentToken.toString().equals("void") || currentToken.toString().equals("array")) {
                            String dataType=currentToken.toString();
                            boolean funcArray=false;
                            int dimCount=0;
                            while (dataType.equals("array")) {
                                getToken();
                                match("of");
                                dataType=currentToken.toString();
                                funcArray=true;
                                dimCount++;
                            }
                            getToken();
                            String name=currentToken.toString();
                            this.add();
                            getToken();
                            
                            LinkedList<Variable> tmp=variableList;
                            variableList=new LinkedList<Variable>();
                            FunctionUser func=new FunctionUser(name, dataType);
                            func.isArray=funcArray;
                            parameterList=null;
                            while (currentToken.toString().equals("int")  || currentToken.toString().equals("float") || currentToken.toString().equals("string") || currentToken.toString().equals("array")) {
                                boolean isArray=false;
                                dimCount=0;
                                while (currentToken.toString().equals("array")) {
                                    getToken();
                                    match("of");
                                    isArray=true;
                                    dimCount++;
                                }
                                if (parameterList==null) parameterList=new LinkedList<Variable>();
                                String type=currentToken.toString();
                                match(type);
                                do {
                                    String nameParam=currentToken.toString();
                                    match(nameParam);
                                    func.addParam(nameParam, type);
                                    Variable paramVar=new Variable(nameParam);
                                    paramVar.isArray=isArray;
                                    paramVar.dimCount=dimCount;
                                    paramVar.setDatatype(type);
                                    parameterList.add(paramVar);
                                } while (currentToken.toString().equals(","));
                            }
                            Function.registerExternalFunction(func);
                            inFunction=true;
                            registerParameter=true;
                            block();
                            parameterList=null;
                            inFunction=false;
                            variableList=tmp;
                        } else error("Unexpected datatype ");
                    } else if (currentToken.toString().equals("var")) {
                        getToken();
                        if (currentToken.toString().equals("int") || currentToken.toString().equals("float") || currentToken.toString().equals("string")) {
                            do {
                                String dataType=currentToken.toString();
                                getToken();
                                String name=currentToken.toString();
                                Variable var=new Variable(name);
                                var.setDatatype(dataType);
                                variableList.add(var);
                            } while (currentToken.toString().equals(","));
                            getToken();
                        } else error("Expecting Datatype");
                    } else if (currentToken.toString().equals("ref")) {
                        getToken();
                        match("of");
                        String type=currentToken.toString();
                        match(type);
                        String name=currentToken.toString();
                        getToken();
                        boolean find=false;
                        for (ClassTemplate temp: templateList) {
                            if (temp.getName().equals(type)) {
                                find=true;
                                Variable var=new Variable(name);
                                var.setDatatype(type);
                                variableList.add(var);
                                var.isClass=true;
                                var.setValue(temp);
                                break;
                            }
                        }
                        if (!find) error("Cannot find class '"+type+"'");
                    } else if (currentToken.toString().equals("class")) {
                        getToken();
                        String name=currentToken.toString();
                        getToken();
                        match("begin");
                        ClassTemplate template=new ClassTemplate(name);
                        templateList.add(template);
                        while(!currentToken.toString().equals("end")) {
                            if (currentToken.toString().equals("var")) {
                                match("var");
                                String type=currentToken.toString();
                                match(type);
                                template.addAttribut(currentToken.toString(), type);
                            }
                            getToken();
                        }
                        match("end");
                    } else if (currentToken.toString().equals("array")) {
                        do {
                            int dim=1;
                            getToken();
                            match("of");
                            while (currentToken.toString().equals("array")) {
                                dim++;
                                getToken();
                                match("of");
                            }
                            String type=currentToken.toString();
                            if (type.equals("int") || type.equals("float") || type.equals("string")) {
                                getToken();
                                if (!currentToken.equals("array")) {
                                    String name=currentToken.toString();
                                    Variable var=new Variable(name);
                                    var.setDatatype(type);
                                    var.isArray=true;
                                    var.dimCount=dim;
                                    variableList.add(var);
                                    getToken();
                                }
                            }
                        } while(currentToken.equals("array"));
                        
                    } else error("Expecting var/func/array keyword.");
                }
                newToken.add(new TokenUnknown("___CLASSCOUNT "+templateList.size()));
                int i=0;
                for (ClassTemplate template:templateList) {
                    if (template.register()) {
                        newToken.add(new TokenUnknown("___CLASS "+i));
                        Iterator it=template.getMemberIterator();
                        int j=0;
                        String type;
                        while(it.hasNext()) {
                            type=it.next().toString();
                            newToken.add(new TokenUnknown("___ATTRIBUT "+type+" "+j));
                            j++;
                        }
                        i++;
                    }
                }
                newToken.add(new TokenInteger(variableList.size()));
                Iterator it=variableList.iterator();
                Variable var=null;
                while (it.hasNext()) {
                    var=(Variable)it.next();
                    newToken.add(new TokenUnknown(var.getDatatype()));
                    newToken.add(new TokenUnknown(var.getName()));
                }
                match("end");
            } else if (token.toString().equals("return")) {
                if (!inFunction) error("Unexpected return");
                Token tmp=currentToken;
                getToken();
                expression();
                newToken.add(tmp);
            } else error("Unexpected keyword");
            return "void";
        } else return "";
    }
    private LinkedList<Variable> getVariableList() {
        LinkedList<Variable> variableList=this.variableList;
        if (parameterList!=null) {
            for(Variable var:parameterList) {
                variableList.add(var);
            }
        }
        return variableList;
    }
    private String variable() {
        if (currentToken instanceof TokenUnknown); else return "";
        LinkedList<Variable> variableList=getVariableList();
        Iterator it=variableList.iterator();
        Variable var;
        while (it.hasNext()) {
            var=(Variable)it.next();
            if (((TokenUnknown)currentToken).toString().equals(var.getName())) {
                ((TokenUnknown)currentToken).isVariable=true;
                Token tok=currentToken;
                getToken();
                boolean arraySet=false;
                if (var.isArray) {
                    if (currentToken.toString().equals("[")) {
                        for (int i=0;i<var.dimCount;i++) {
                            match('[');
                            expression();
                            match(']');
                        }
                        arraySet=true;
                    } else if (!currentToken.toString().equals("=")) {
                        newToken.add(new TokenUnknown("___ARRAYREF"));
                        arraySet=true;
                    } else {
                        arraySet=false;
                    }
                } else if (var.isClass) {
                    newToken.add(new TokenUnknown("___PUSHVARREF"));
                    getToken();
                    match(".");
                    int id=((ClassTemplate)var.getValue()).getID(currentToken.toString());
                    if (id==-1) error("Cannot find member '"+currentToken.toString()+"'");
                    newToken.add(new TokenUnknown("___PUSHATTRIBUT "+id));
                    newToken.add(new TokenUnknown("___INSTANCEGET"));
                }
                if (currentToken.toString().equals("=")) {
                    Token tmp=currentToken;
                    getToken();
                    String type=expression();
                    if (!type.equals(var.getDatatype())) error("Unexpected Datatype ['"+var.getDatatype()+"', '"+type+"']");
                    
                    if (var.isArray==true && arraySet==true) {
                        newToken.add(new TokenUnknown("___ARRAYSET"));
                        newToken.add(tok);
                    } else if(var.isClass) {
                        newToken.add(new TokenUnknown("___REFSTACK"));
                        newToken.add(tmp);
                    } else {
                        newToken.add(tok);
                        newToken.add(tmp);
                    }
                } else  if(var.isArray){
                    newToken.add(new TokenUnknown("___ARRAY"));
                    newToken.add(tok);
                } else if (var.isClass) {
                    newToken.add(new TokenUnknown("___VARTOVAL"));
                } else {
                    newToken.add(tok);
                }
                return var.getDatatype();
            }
        }
        return "";
    }
}
