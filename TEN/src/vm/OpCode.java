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
public class OpCode {
    private final static int IS_PUSHINT = 1000;
    private final static int IS_PUSHFLOAT = 1001;
    private final static int IS_PUSHSTRING = 1002;
    private final static int IS_LABEL = 1003;
    private final static int IS_JUMP = 1004;
    private final static int IS_CHECK = 1005;
    private final static int IS_POP = 1006;
    private final static int IS_GETIDENTIFIER = 1007;
    private final static int IS_GETTABLE = 1008;
    private final static int IS_CALLTABLE = 1009;
    private final static int IS_CALLSTACK = 1028;
    private final static int IS_SET = 1010;
    private final static int IS_EQUAL = 1011;
    private final static int IS_ADD = 1012;
    private final static int IS_SUB = 1013;
    private final static int IS_MUL = 1014;
    private final static int IS_DIV = 1015;
    private final static int IS_LESSEQU = 1016;
    private final static int IS_GREATEQU = 1017;
    private final static int IS_UNEQUAL = 1018;
    private final static int IS_FORCHECK = 1019;
    private final static int IS_NEWIDENTIFIER = 1020;
    private final static int IS_IDENTIFIERS = 1021;
    private final static int IS_FUNCDEF = 1022;
    private final static int IS_RETURN = 1023;
    private final static int IS_ENDDEF = 1024;
    private final static int IS_SETINV = 1026;
    private final static int IS_JUMP2FUNC = 1027;
    private final static int IS_IMPLEMENT = 1029;

            
    private int typ;
    private VM vm;
    private Object value;
    public void update() {
        if (typ == IS_JUMP || typ == IS_CHECK || typ == IS_FORCHECK) {
            value = new Integer( vm.getLabel((Integer)value) );
        }
    }
    public OpCode(VM vm, String line, int index) {
        this.vm = vm;
        String command, parameter;
        if (line.indexOf(" ") != -1) {
            command = line.substring(0,line.indexOf(" "));
            parameter = line.substring(line.indexOf(" ") + 1);
        } else {
            command = line;
            parameter = "";
        }
        if (command.equals("pushint")) {
            value = new Integer(parameter);
            typ = IS_PUSHINT;
        } else if (command.equals("pushfloat")) {
            value = new Float(parameter);
            typ = IS_PUSHFLOAT;
        } else if (command.equals("pushstring")) {
            value = parameter.substring(1,parameter.length() - 1);
            typ = IS_PUSHSTRING;
        } else if (command.equals("check")) {
            value = new Integer(parameter);
            typ = IS_CHECK;
        } else if (command.equals("jump")) {
            value = new Integer(parameter);
            typ = IS_JUMP;
        } else if (command.equals("label")) {
            value = new Integer(parameter);
            typ = IS_LABEL;
            vm.setLabel((Integer)value, index);
        } else if (command.equals("pop")) {
            value = null;
            typ = IS_POP;
        } else if (command.equals("getidentifier")) {
            typ = IS_GETIDENTIFIER;
        } else if (command.equals("gettable")) {
            typ = IS_GETTABLE;
        } else if (command.equals("calltable")) {
            typ = IS_CALLTABLE;
        } else if (command.equals("set")) {
            value = null;
            typ = IS_SET;
        } else if (command.equals("equal")) {
            value = null;
            typ = IS_EQUAL;
        } else if (command.equals("add")) {
            value = null;
            typ = IS_ADD;
        } else if (command.equals("mul")) {
            value = null;
            typ = IS_MUL;
        } else if (command.equals("div")) {
            value = null;
            typ = IS_DIV;
        } else if (command.equals("sub")) {
            value = null;
            typ = IS_SUB;
        } else if (command.equals("lessequ")) {
            value = null;
            typ = IS_LESSEQU;
        } else if (command.equals("greatequ")) {
            value = null;
            typ = IS_GREATEQU;
        } else if (command.equals("unequal")) {
            value = null;
            typ = IS_UNEQUAL;
        } else if (command.equals("forcheck")) {
            value = new Integer(parameter);
            typ = IS_FORCHECK;
        } else if (command.equals("newidentifier")) {
            typ = IS_NEWIDENTIFIER;
        } else if (command.equals("identifiers")) {
            typ = IS_IDENTIFIERS;
            value = new Integer(parameter);
        } else if (command.equals("funcdef")) {
            value = new Integer(parameter);
            typ = IS_FUNCDEF;
        } else if (command.equals("return")) {
            value = null;
            typ = IS_RETURN;
        } else if (command.equals("enddef")) {
            value = new Integer(parameter);
            typ = IS_ENDDEF;
        } else if (command.equals("setinv")) {
            value = null;
            typ = IS_SETINV;
        } else if (command.equals("jump2func")) {
            value = null;
            typ = IS_JUMP2FUNC;
        } else if (command.equals("implement")) {
            value = null;
            typ = IS_IMPLEMENT;
        } else if (command.equals("callstack")) {
            value = null;
            typ = IS_CALLSTACK;
        }

    }

    public boolean execute() {
        Object obj;
        Identifier ident;
        Object obj1, obj2;
        String hash;
        int v;
        switch (typ) {
            case IS_PUSHINT:
            case IS_PUSHFLOAT:
            case IS_PUSHSTRING:
                vm.getFrame().push(value);
                break;
            case IS_LABEL:
                //nichts tun
                break;
            case IS_JUMP:
                vm.setPC( (Integer)value);
                break;
            case IS_CHECK:
                Boolean bool = vm.popBoolean();
                if (!bool) {
                    vm.setPC( (Integer)value );
                }
                break;
            case IS_POP:
                vm.getFrame().pop();
                break;
            case IS_GETIDENTIFIER:
                hash = vm.popString();
                ident = null;
                if (hash.equals("__local"))
                    ident = vm.getLocal();
                if (hash.equals("__parameter"))
                    ident = vm.getParameter();
                if (hash.equals("func"))
                    ident = vm.getFunc();
                
                
                vm.getFrame().push(ident);
                break;
            case IS_GETTABLE:
                hash = vm.popString();
                obj = vm.getFrame().pop();
                if (obj instanceof Identifier) {
                    ident = (Identifier)obj;
                    obj = ident.getIdentifier( hash );
                    vm.getFrame().push( obj );
                } else if (obj instanceof HashMap) {
                    ident = new Identifier("".toString());
                    ident.set(obj);
                    obj = ident.getIdentifier( hash );
                    vm.getFrame().push( obj );
                } else {
                    System.err.println("Table access to non table: ");
                    return false;
                }
                break;
            case IS_JUMP2FUNC:
                vm.getFrame().setStack(1);
                obj = vm.getFrame().pop();
                Object self = vm.getFrame().pop();
                vm.getFrame().setStack(0);
                obj = ((Identifier)obj).getValue();
                if (obj instanceof Function) {
                    ((Function)obj).call(vm);
                } else {

                    vm.getFrame().setStack(1);
                    
                    vm.getFrame().push(vm.getPC()); //yay
                    vm.setPC((Integer)obj);


                    vm.getFrame().push(vm.getLocal());
                    ident = new Identifier("__local");
                    ident.set(new HashMap());
                    vm.setLocal(ident);

                    vm.getFrame().push(vm.getParameter());
                    ident = new Identifier("__parameter");
                    ident.set(new HashMap());
                    vm.setParameter(ident);

                    vm.getFrame().setStack(0);
                    vm.getFrame().push(self);
                }
                break;
            case IS_CALLSTACK:
                obj = vm.popInt();
                ident = new Identifier("__jumpposition__");
                ident.set(obj);
                vm.getFrame().setStack(1);
                vm.getFrame().push(new Identifier("__emptytable__"));
                vm.getFrame().push(ident);
                vm.getFrame().setStack(0);

                break;
            case IS_CALLTABLE:
                hash = vm.popString();
                obj = vm.getFrame().pop();
                if (obj instanceof Identifier) {
                    //vm.getFrame().push(obj);
                    vm.getFrame().setStack(1);
                    vm.getFrame().push(obj);
                    vm.getFrame().push(((Identifier)obj).getIdentifier(hash));
                    vm.getFrame().setStack(0);
                } else {
                    System.err.println("Table access to null table");
                    return false;
                }
                
                break;
            case IS_SET:
            case IS_SETINV:
                Object result;
                if (typ == IS_SET) {
                    result = vm.getFrame().pop();
                    ident = (Identifier)vm.getFrame().pop();
                } else {
                    ident = (Identifier)vm.getFrame().pop();
                    result = vm.getFrame().pop();
                }
                if (ident == null) {
                    System.err.println("Cannot assign non table.");
                    return false;
                } else {
                    ident.set(result);
                }
                vm.getFrame().push(result);
                break;
            case IS_EQUAL:
                obj1 = vm.popFloat();
                obj2 = vm.popFloat();

                vm.getFrame().push(new Boolean(obj1.equals(obj2)));
                break;
            case IS_ADD:
                obj2 = vm.getFrame().pop();
                obj1 = vm.getFrame().pop();
                if (obj1 instanceof String || obj2 instanceof String) {
                    vm.getFrame().push(vm.toString(obj1) + vm.toString(obj2));
                } else if (vm.isInt(obj1) && vm.isInt(obj2)) {
                    vm.getFrame().push(vm.toInt(obj1) + vm.toInt(obj2));
                } else {
                    vm.getFrame().push(new Float(vm.toFloat(obj1)) + vm.toFloat(obj2));
                }
                
                break;
            case IS_SUB:
                obj2 = vm.getFrame().pop();
                obj1 = vm.getFrame().pop();
                if (vm.isInt(obj1) && vm.isInt(obj2)) {
                    vm.getFrame().push(vm.toInt(obj1) - vm.toInt(obj2));
                } else {
                    vm.getFrame().push(new Float(vm.toFloat(obj1)) - vm.toFloat(obj2));
                }
                break;
            case IS_DIV:
                obj2 = vm.getFrame().pop();
                obj1 = vm.getFrame().pop();
                if (vm.isInt(obj1) && vm.isInt(obj2)) {
                    vm.getFrame().push(vm.toInt(obj1) / vm.toInt(obj2));
                } else {
                    vm.getFrame().push(new Float(vm.toFloat(obj1)) / vm.toFloat(obj2));
                }
                break;
            case IS_MUL:
                obj2 = vm.getFrame().pop();
                obj1 = vm.getFrame().pop();
                if (vm.isInt(obj1) && vm.isInt(obj2)) {
                    vm.getFrame().push(vm.toInt(obj1) * vm.toInt(obj2));
                } else {
                    vm.getFrame().push(new Float(vm.toFloat(obj1)) * vm.toFloat(obj2));
                }
                break;

            case IS_LESSEQU:
                obj2 = vm.getFrame().pop();
                obj1 = vm.getFrame().pop();
                if (vm.isInt(obj1) && vm.isInt(obj2)) {
                    vm.getFrame().push(new Boolean(vm.toInt(obj1) <= vm.toInt(obj2)));
                } else {
                    vm.getFrame().push(new Boolean(new Float(vm.toFloat(obj1)) <= vm.toFloat(obj2)));
                }
                break;
            case IS_GREATEQU:
                obj2 = vm.getFrame().pop();
                obj1 = vm.getFrame().pop();
                if (vm.isInt(obj1) && vm.isInt(obj2)) {
                    vm.getFrame().push(new Boolean(vm.toInt(obj1) >= vm.toInt(obj2)));
                } else {
                    vm.getFrame().push(new Boolean(new Float(vm.toFloat(obj1)) >= vm.toFloat(obj2)));
                }
                break;
            case IS_UNEQUAL:
                obj2 = vm.getFrame().pop();
                obj1 = vm.getFrame().pop();
                if (vm.isInt(obj1) && vm.isInt(obj2)) {
                    vm.getFrame().push(new Boolean(vm.toInt(obj1) != vm.toInt(obj2)));
                } else {
                    vm.getFrame().push(new Boolean(new Float(vm.toFloat(obj1)) != vm.toFloat(obj2)));
                }
                break;
            case IS_FORCHECK:
                Integer to, step, vari;
                to = vm.popInt();
                step = vm.popInt();
                vari = vm.popInt();
                if (vari != null && step != null && to != null) {
                    if (step>0) {
                        if (vari > to) {
                            vm.setPC( (Integer)value );
                        }
                    } else if (step<0) {
                        if (vari < to) {
                            vm.setPC( (Integer)value );
                        }
                    }
                } else {
                    System.err.println("Something went wrong...");
                    return false;
                }
                break;
            case IS_NEWIDENTIFIER:
                String str = vm.popString();
                ident = new Identifier(str);
                ident.set(str);
                vm.getFrame().push(ident);
                break;
            case IS_IDENTIFIERS:
                HashMap<String,Identifier> map = new HashMap<String,Identifier>();
                for (int i = (Integer)value;i>0;i--) {
                    obj=vm.getFrame().pop();
                    if (obj instanceof HashMap) {
                        HashMap map2 = (HashMap)obj;
                        for(Object o:map2.values()) {
                            if (o instanceof Identifier) {
                                Identifier id = (Identifier)o;
                                map.put(id.getName(), id);
                            }
                        }
                    } else {
                        ident = (Identifier)obj;
                        Object val = vm.getFrame().pop();
                        ident.set(val);
                        map.put(ident.getName(), ident);
                    }
                }
                vm.getFrame().push(map);
                break;
            case IS_FUNCDEF:
                int pos = vm.getPC();
                for (int i=pos; true ;i++) {
                    OpCode op = vm.getOpCode(i);
                    if (op.typ == IS_ENDDEF && ((int)(Integer)op.value) == (Integer)value) {
                        vm.getFrame().push(new Integer(pos));
                        vm.setPC(i - 1);

                        break;
                    }
                }
                break;
            case IS_RETURN:
                Object ret = vm.getFrame().pop();
                
                vm.getFrame().setStack(1);
                vm.setParameter((Identifier)vm.getFrame().pop());
                vm.setLocal((Identifier)vm.getFrame().pop());
                vm.setPC(vm.popInt());
                vm.getFrame().setStack(0);
                
                vm.getFrame().push(ret);
                break;
            case IS_IMPLEMENT:
                obj1 = vm.getFrame().pop();
                if (obj1 instanceof Identifier) {
                    obj1 = ((Identifier)obj1).getValue();
                }
                if ( obj1 instanceof HashMap) {
                    map = ((HashMap)obj1);
                    vm.getFrame().push(map);
                } else {
                    System.err.println("Cannot implement.");
                    return false;
                }
                break;
            default:
                break;
        }
        return true;
    }
}
