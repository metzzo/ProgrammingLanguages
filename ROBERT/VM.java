
/**
 * Führt einen String aus
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class VM {
    private static final int SIZES=1024;
    private OpCode[] code; //Code als OpCodes
    private Object[] stack; //Der Stack
    public Function[] func; //Alle Funktionen
    private int jumpMark[]; //Definiert die Sprungpunkte 
    private int pc; //Der PRogramm Counter (Der 1. Register, gibt die aktuelle Position vom Programm zurück)
    private int lvc; //Local Var Counter (Der 2. Register, gibt die Position der aktuellen Position der Lokalen Variablen zurück)
    private int fc; //Der Function Counter (Der 3. Register, zeigt die aktuelle Position der Functions im Stack an)
    private int sc; //Der Stack Register, zeigt wo man sich gerade im Stack befindet
    private int lpc; //Parameter Counter (Local Parameter Count), speichert die Position von den Parametern
    private int rc; //Der Ref Counter, er speichert Referenzen um dann auf Objekte zugreifen zu können
    
    public int getRC() { return rc; }
    public void setRC(int val) { rc=val; }
    
    public int getPC() { return pc; }
    public void setPC(int val) { pc=val; }
    
    public int getLVC() { return lvc; }
    public void setLVC(int val) { lvc=val; }
    
    public int getFC() { return fc; }
    public void setFC(int val) { fc=val; }
    
    public int getSC() { return sc; }
    public void setSC(int val) { sc=val; }
    
    public int getLPC() { return lpc; }
    public void setLPC(int val) { lpc=val; }
    
    
    public VM(String text) {
        sc=0;
        lvc=0;
        fc=0;
        sc=0;
        lpc=0;
        func=Function.createFunction();
        String[] line=text.split("\n");
        code=new OpCode[line.length];
        stack=new Object[SIZES];
        jumpMark=new int[SIZES];
        
        for (int i=0;i<line.length;i++) {
            String par[]=line[i].split(" ");
            if (par[0].equals("pushint")) {
                code[i]=new OpCodeInt(par[1]);
            } else if (par[0].equals("pushfloat")) {
                code[i]=new OpCodeFloat(par[1]);
            } else if (par[0].equals("pushstring")) {
                line[i]=line[i].substring(12);
                line[i]=line[i].substring(0,line[i].length()-2);
                code[i]=new OpCodeString(line[i]);
            } else if (par[0].equals("add")) {
                code[i]=new OpCodeAdd();
            } else if (par[0].equals("sub")) {
                code[i]=new OpCodeSub();
            } else if (par[0].equals("mul")) {
                code[i]=new OpCodeMul();
            } else if (par[0].equals("div")) {
                code[i]=new OpCodeDiv();
            } else if (par[0].equals("smaller")) {
                code[i]=new OpCodeSmaller();
            } else if (par[0].equals("greater")) {
                code[i]=new OpCodeGreater();
            } else if (par[0].equals("equals")) {
                code[i]=new OpCodeEquals();
            } else if (par[0].equals("inv")) {
                code[i]=new OpCodeInv();
            } else if (par[0].equals("set")) {
                code[i]=new OpCodeSet();
            } else if (par[0].equals("funcdef")) {
                code[i]=new OpCodeFuncDef(new Integer(par[1]),par[2]);
            } else if (par[0].equals("vardef")) {
                code[i]=new OpCodeVarDef(new Integer(par[1]),par[2]);
            } else if (par[0].equals("varcount")) {
                code[i]=new OpCodeVarCount(new Integer(par[1]));
            } else if (par[0].equals("paramdef")) {
                code[i]=new OpCodeParamDef(new Integer(par[1]),par[2]);
            } else if (par[0].equals("paramcount")) {
                code[i]=new OpCodeParamCount(new Integer(par[1]));
            } else if (par[0].equals("funccount")) {
                code[i]=new OpCodeFuncCount(new Integer(par[1]));
            } else if (par[0].equals("pushvar")) {
                code[i]=new OpCodeVar();
            } else if (par[0].equals("check")) {
                code[i]=new OpCodeCheck();
            } else if (par[0].equals("call")) {
                code[i]=new OpCodeCall(new Integer(par[1]));
            } else if (par[0].equals("lbl")) {
                code[i]=new OpCodeLabel();
                jumpMark[new Integer(par[1])]=i;
            } else if (par[0].equals("jmp")) {
                code[i]=new OpCodeJump(new Integer(par[1]));
            } else if(par[0].equals("retjmp")) {
                code[i]=new OpCodeReturnJump(new Integer(par[1]));
            } else if (par[0].equals("flbl")) {
                code[i]=new OpCodeFunctionLabel(this, new Integer(par[1]), i);
            } else if (par[0].equals("ref")) {
                code[i]=new OpCodeRef(new Integer(par[1]));
            } else if (par[0].equals("refvar")) {
                code[i]=new OpCodeRefVar(new Integer(par[1]));
            } else if (par[0].equals("dimarray")) {
                code[i]=new OpCodeDimArray(new Integer(par[1]));
            } else if (par[0].equals("setarray")) {
                code[i]=new OpCodeSetArray();
            } else if (par[0].equals("getarray")) {
                code[i]=new OpCodeGetArray();
            } else if (par[0].equals("pusharray")) {
                code[i]=new OpCodePushArray();
            } else if (par[0].equals("getpoparray")) {
                code[i]=new OpCodeGetPopArray();
            }
        }
    }
    public OpCode getOpCode(int i) {return code[i];}
    public void execute() {
        for (pc=0;pc<code.length;pc++) {
            if (code[pc]!=null) code[pc].execute(this);
        }
    }
    public void jumpTo(int pos) {
        setPC(jumpMark[pos]);
    }
    //Stack
    public Object pop() {
        sc--;
        return stack[sc+1];
    }
    public void push(Object obj) {
        sc++;
        stack[sc]=obj;
    }
    public Object get(int pos) {
        return stack[pos];
    } 
    public void argSet(int pos, Object val) {
        stack[pos]=val;
    }
}
