/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package vm;
import java.util.*;
/**
 *
 * @author Coolo
 */
public class VM {
    private final static boolean STACKDEBUG = false;

    private int pc;
    private OpCode opCodes[];
    private int[] labels;
    private Identifier local, parameter, func;
    private StackFrame currentFrame;
    private StackFrame frames;
    
    public void pushFrame() {
        currentFrame = new StackFrame();
        frames.push(currentFrame);
    }
    public void popFrame() {
        frames.pop();
        currentFrame = (StackFrame)frames.pop();
        frames.push(currentFrame);
    }

    public int getPC() {
        return pc;
    }
    public void setPC( int pc ) {
        if (pc>=0 && pc <= opCodes.length) {
            this.pc = pc;
        }
    }
    public OpCode getOpCode(int pc) {
        return opCodes[pc];
    }
    public Identifier getFunc() {
        return func;
    }
    public Identifier getLocal() {
        return local;
    }
    public Identifier getParameter() {
        return parameter;
    }
    public void setLocal(Identifier loc) {
        local = loc;
    }
    public void setParameter(Identifier param) {
        parameter = param;
    }
    public VM(String opCode) {
        frames = new StackFrame();
        pushFrame();
        
        String[] lines = opCode.split("\n");
        labels = new int[lines.length];
        opCodes = new OpCode[lines.length];
        int i = 0;
        for (String line: lines) {
           opCodes[i] = new OpCode(this, line, i);
           i++;
        }
        //nun alle jumps aupdaten
        for (i =0; i<opCodes.length;i++) {
            opCodes[i] . update();
        }

        func = new Identifier("func");
        func.set(new HashMap());
        local = new Identifier("__local");
        local.set(new HashMap());
        parameter = new Identifier("__parameter");
        parameter.set(new HashMap());
    }
    
    public void execute() {
        getFrame().push(new Identifier("__local"));
        for (pc = 0;pc < opCodes.length;pc++) {
            if (!opCodes[pc].execute()) {
                return;
            }
            if (STACKDEBUG) {
                System.out.println("STACK --------------- "+getStackPos());
            }
        }
    }
    public StackFrame getFrame() {
        return currentFrame;
    }
    public Identifier popIdentifier() {
        return toIdentifier(getFrame().pop());

    }
    public Identifier toIdentifier(Object obj) {
        if (obj instanceof Identifier) {
            return (Identifier)obj;
        } else {
            Identifier ident = new Identifier("".toString());
            ident.set(obj);
            return ident;
        }
    }
    public String popString() {
        return toString(getFrame().pop());
    }

    public String toString(Object obj) {
        if (obj instanceof String) return (String)obj;
        if (obj instanceof Integer) return ((Integer)obj)+"";
        if (obj instanceof Float) return ((Float)obj)+"";
        if (obj instanceof Boolean) return ((Boolean)obj)+"";
        if (obj instanceof Identifier) return toString(((Identifier)obj).getValue());
        if (obj instanceof NullDatatype) return "null";
        return "";
    }

    public Integer popInt() {
        return toInt(getFrame().pop());
    }
    public Integer toInt(Object obj) {
        if (obj instanceof Integer) return (Integer)obj;
        if (obj instanceof String) return new Integer((String)obj);
        if (obj instanceof Float) return new Integer((Float)obj+"");
        if (obj instanceof Boolean) return new Integer(((Boolean)obj)+"");
        if (obj instanceof Identifier) return toInt(((Identifier)obj).getValue());
        if (obj instanceof NullDatatype) return new Integer(0);
        return new Integer(0);
    }
    public Float popFloat() {
        return toFloat(getFrame().pop());
    }
    public Float toFloat(Object obj) {
        if (obj instanceof Float) return (Float)obj;
        if (obj instanceof String) return new Float((String)obj);
        if (obj instanceof Integer) return new Float((Integer)obj+"");
        if (obj instanceof Boolean) return new Float(((Boolean)obj)+"");
        if (obj instanceof Identifier) return toFloat(((Identifier)obj).getValue());
        return 0.0f;
    }
    public Boolean popBoolean() {
        return toBoolean(getFrame().pop());
    }
    public Boolean toBoolean(Object obj) {
        if (obj instanceof Boolean) return (Boolean)obj;
        if (obj instanceof String)
            if (!((String)obj).equals(""))
                return true;
            else
                return false;
        if (obj instanceof Float)
            if ((Float)obj != 0.0f)
                return true;
            else
                return false;
        if (obj instanceof Integer)
            if ((Integer)obj != 0)
                return true;
            else
                return false;
        if (obj instanceof Identifier) return toBoolean(((Identifier)obj).getValue());
        return false;
    }

    public boolean isInt(Object obj) {
        if (obj instanceof Integer) {
            return true;
        } else if (obj instanceof Identifier) {
            return ((Identifier)obj).getValue() instanceof Integer;
        } else
            return false;
    }

    public void setLabel(int id, int pos) {
        labels[id] = pos;
    }
    public int getLabel(int pos) {
        return labels[pos];
    }

    public Object[] getStack() {
        return currentFrame.getStack();
    }
    public int getStackPos() {
        return currentFrame.getStackPos();
    }

    public void register(Function func) {
        Identifier ident = new Identifier(func.getName());
        ident.set( func );
        this.func.newIdentifier(ident);
    }
}
