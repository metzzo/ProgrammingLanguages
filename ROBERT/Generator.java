import java.util.*;
/**
 * Robert Fischer
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class Generator {
    private String output;
    private ArrayList<Token> token;
    private ListIterator it;
    private int scopeStack[];
    private String[] variable;
    private int currentVariablePos;
    private String[] parameter;
    private int currentParameterPos;
    private Function[] func;
    private int jmplabel=-1;
    private int breakLabel[];
    private int breakPos;
    private Token tok;
    public Generator(Compiler c, ArrayList<Token> token) {
        this.token=token;
    }
    public String generate() {
        for (Token tok:token) {
            System.out.print(tok.toString()+" ");
        }
        add("");
        variable=new String[128];
        parameter=new String[128];
        breakLabel=new int[128];
        currentVariablePos=0;
        currentParameterPos=0;
        output="";
        func=Function.createFunction();
        add("funccount "+func.length);
        for (int i=0; i<func.length; i++) {
            add("funcdef "+i+" "+func[i].getName());
        }
        it=token.listIterator();
        tok=(Token)it.next();
        while (true) {
            proccessToken();
            if (!it.hasNext()) break;
            tok=(Token)it.next();
        }
        optimize();
        System.out.println(output);
        return output;
    }
    private void optimize() {
        //EInfache Dinge optimieren wie pushint 1 mul usw.
        output=output.replace("inv \ninv \n","");
        //output=output.replace("pushint 1 \nmul \n","");
        //output=output.replace("pushint 1 \ndiv \n","");
    }
    public void proccessToken() {
        if (tok.toString().equals("if")) {
            this.jmplabel++;
            int jmplabel=this.jmplabel;
            add("inv");
            add("check");
            add("jmp "+jmplabel);
            while (it.hasNext()) {
                tok=(Token)it.next();
                if (tok.toString().equals("end")) {
                    tok=(Token)it.next();
                    break;
                }
                proccessToken();
            }
            
            if (tok.toString().equals("else")) {
                this.jmplabel++;
                int jmplabel2=this.jmplabel;
                add("jmp "+jmplabel2);
                add("lbl "+jmplabel);
                while (it.hasNext()) {
                    if (tok.toString().equals("end")) {
                        tok=(Token)it.next();
                        break;
                    }
                    tok=(Token)it.next();
                    proccessToken();
                }
                add("lbl "+jmplabel2);
                proccessToken();
            } else {
                
                add("lbl "+jmplabel);
            }
            tok=(Token)it.previous();
        } else if (tok.toString().equals("while")) {
            //Nichts tun
        } else if (tok.toString().equals("forever")) {
            this.jmplabel++;
            int jmplabel=this.jmplabel;
            this.jmplabel+=2;
            add("lbl "+jmplabel);
            pushBreak(jmplabel+1);
            while (it.hasNext()) {
                if (tok.toString().equals("end")) {
                    tok=(Token)it.next();
                    proccessToken();
                    break;
                }
                tok=(Token)it.next();
                proccessToken();
            }
            popBreak();
            add("jmp "+jmplabel);
            add("lbl "+(jmplabel+1));
        } else if (tok.toString().equals("dim")) {
            tok=(Token)it.next();
            int dim=new Integer(tok.toString());
            tok=(Token)it.next();
            boolean find=false;
            for (int i=0;i<currentVariablePos;i++) {
                if (variable[i].equals(tok.toString())) {
                    this.add("ref "+i);
                    this.add("dimarray "+dim);
                    find=true;
                    break;
                }
            }
            if (!find) {
                for (int i=0;i<currentParameterPos;i++) {
                    if (parameter[i].equals(tok.toString())) {
                        this.add("ref "+i);
                        this.add("dimarray"+dim);
                        find=true;
                        break;
                    }
                }
            }
        } else if (tok.toString().equals("___CLASS")) {
            
        } else if (tok.toString().equals("___CLASSCOUNT")) {
            
        } else if (tok.toString().equals("___ATTRIBUT")) {
            
        } else if (tok.toString().equals("___NEW")) {
            
        } else if (tok.toString().equals("___PUSHATTRIBUT")) {
            
        } else if (tok.toString().equals("___PUSHVARREF")) {
            
        } else if (tok.toString().equals("___INSTANCEGET")) {
            
        } else if (tok.toString().equals("___REFSTACK")) {
            
        } else if (tok.toString().equals("___VARTOVAL")) {
            
        } else if (tok.toString().equals("___ARRAY")) {
            tok=(Token)it.next();
            String name=tok.toString();
            boolean find=false;
            for (int i=0;i<currentVariablePos;i++) {
                if (variable[i].equals(tok.toString())) {
                    this.add("ref "+i);
                    find=true;
                    break;
                }
            }
            if (!find) {
                for (int i=0;i<currentParameterPos;i++) {
                    if (parameter[i].equals(tok.toString())) {
                        this.add("ref "+(-(i+1)));
                        find=true;
                        break;
                    }
                }
            }
            add("getarray");
        } else if (tok.toString().equals("___GETPOPARRAY")) {
            add("getpoparray");
        } else if (tok.toString().equals("___ARRAYSET")) {
            tok=(Token)it.next();
            String name=tok.toString();
            boolean find=false;
            for (int i=0;i<currentVariablePos;i++) {
                if (variable[i].equals(tok.toString())) {
                    this.add("ref "+i);
                    find=true;
                    break;
                }
            }
            if (!find) {
                for (int i=0;i<currentParameterPos;i++) {
                    if (parameter[i].equals(tok.toString())) {
                        this.add("ref "+(-(i+1)));
                        find=true;
                        break;
                    }
                }
            }
            add("setarray");
        } else if (tok.toString().equals("___ARRAYREF")) {
            tok=(Token)it.next();
            tok=(Token)it.next();
            boolean find=false;
            for (int i=0;i<currentVariablePos;i++) {
                if (variable[i].equals(tok.toString())) {
                    this.add("ref "+i);
                    find=true;
                    break;
                }
            }
            if (!find) {
                for (int i=0;i<currentParameterPos;i++) {
                    if (parameter[i].equals(tok.toString())) {
                        this.add("ref "+(-(i+1)));
                        find=true;
                        break;
                    }
                }
            }
            add("pusharray");
        } else if (tok.toString().equals("break")) {
            add("jmp "+get());
        } else if (tok.toString().equals("do")) {
            //nichts tun
        } else if (tok.toString().equals("for")) {
            //Auch nichts tun
        } else if (tok.toString().equals("end")) {
            // nichts tun
        } else if (tok.toString().equals("begin")) {
            //Nun solange ausführen bis End erreicht wurde
            while (!tok.toString().equals("end")) {
                tok=(Token)it.next();
                proccessToken();
            }
            tok=(Token)it.next();
        } else if (tok.toString().equals("return")) {
            add("retjmp 1");
        } else if (tok.toString().equals("___PARAMETERCOUNT")) {
            currentParameterPos=0;
            tok=(Token)it.next();
            int count=new Integer(tok.toString());
            add("paramcount "+count);
            for (int i=0;i<count;i++) {
                tok=(Token)it.next();
                String type=tok.toString();
                tok=(Token)it.next();
                String name=tok.toString();
                add("paramdef "+currentParameterPos+" "+type);
                parameter[currentParameterPos]=name;
                currentParameterPos++;
            }
        } else if (tok.toString().equals("definition")) {
            tok=(Token)it.next();
            boolean inFunc=false;
            while (tok.toString().equals("func")) {
                tok=(Token)it.next();
                String name=tok.toString();
                int i=0;
                for (Function f:func) {
                    if (f.getName().equals(name)) {
                        break;
                    }
                    i++;
                }
                add("flbl "+i);
                while (it.hasNext()) {
                    tok=(Token)it.next();
                    if (tok.toString().equals("end")) break;
                    proccessToken();
                }
                //do {
                //    tok=(Token)it.next();
                //} while(tok.toString().equals("end"));
                //tok=(Token)it.previous();
                currentParameterPos=0;
                add("retjmp -1");
                inFunc=true;
                tok=(Token)it.next();
            }
            if (Lexer.isInt(tok.toString())) {
                int count=new Integer(tok.toString());
                add("varcount "+count);
                currentVariablePos=0;
                for (int i=0; i<count; i++) {
                    tok=(Token)it.next();
                    String datatype=tok.toString();
                    tok=(Token)it.next();
                    String name=tok.toString();
                    add("vardef "+currentVariablePos+" "+datatype);
                    variable[currentVariablePos]=name;
                    currentVariablePos++;
                }
            }
        } else if (tok instanceof TokenOperator) {
            if (tok.toString().equals("+"))
                add("add");
            if (tok.toString().equals("-"))
                add("minus");
            if (tok.toString().equals("*"))
                add("mul");
            if (tok.toString().equals("/"))
                add("div");
            if (tok.toString().equals("<"))
                add("smaller");
            if (tok.toString().equals(">"))
                add("greater");
            if (tok.toString().equals("=="))
                add("equals");
            if (tok.toString().equals("not"))
                add("inv");
        } else if (tok instanceof TokenInteger) {
            add("pushint "+tok.toString());
        } else if (tok instanceof TokenFloat) {
            add("pushfloat "+tok.toString());
        } else if (tok instanceof TokenString) {
            add("pushstring "+tok.toString());
        } else if (tok instanceof TokenUnknown) {
            if (((TokenUnknown)tok).isVariable) {
                for (int i=0;i<currentVariablePos;i++) {
                    if (variable[i].equals(tok.toString())) {
                        tok=(Token)it.next();
                        add("refvar "+i);
                        if (tok.toString().equals("=")) {
                            add("set");
                        } else {
                            add("pushvar");
                            tok=(Token)it.previous();
                        }
                        
                        break;
                    }
                }
                for (int i=0;i<currentParameterPos;i++) {
                    if (parameter[i].equals(tok.toString())) {
                        tok=(Token)it.next();
                        i++;
                        add("refvar "+(-i));
                        if (tok.toString().equals("=")) {
                            add("set");
                        } else {
                            add("pushvar");
                            tok=(Token)it.previous();
                        }
                        
                        break;
                    }
                }
            } else add(tok.toString());
        } else if (tok instanceof TokenFunction) { 
            for (int i=0;i<func.length;i++) {
                if (func[i].getName().equals(tok.toString())) {
                    add("call "+i);
                    break;
                }
            }
        }
    }
    private void add(String txt) {
        output+=txt+" \n";
    }
    private void pushBreak(int pos) {
        breakLabel[breakPos]=pos;
        breakPos++;
    }
    private int popBreak() {
        breakPos--;
        return breakLabel[breakPos];
    }
    private int get() {
        return breakLabel[breakPos-1];
    }
}
