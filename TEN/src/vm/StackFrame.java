/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package vm;

/**
 *
 * @author Coolo
 */
public class StackFrame {
    private Object stack[];
    private Object[] valueStack, funcStack;
    private int valueStackPos, funcStackPos;
    private int currentStack = -1;
    private int stackPos;

    public StackFrame() {
        valueStack = new Object[1024 * 4];
        funcStack = new Object[1024 * 4];
        setStack(0);
    }
    public void setStack(int id) {
        if (currentStack != id) {
            if (currentStack == 0) {
                this.valueStackPos = stackPos;
            } else if (currentStack == 1) {
                this.funcStackPos = stackPos;
            }
            if (id == 0) {
                stackPos = this.valueStackPos;
                stack = this.valueStack;
            } else if(id == 1) {
                stackPos = this.funcStackPos;
                stack = this.funcStack;
            }
            currentStack = id;
        }
    }
    public Object pop() {
        stackPos--;
        if (stackPos>=0) {
            Object obj = stack[stackPos];
            stack[stackPos] = null;
            return obj;
        } else {
            System.err.println("Stack is empty.");
            System.exit(0);
            return null;
        }
    }
    public void push(Object obj) {
        stack[stackPos] = obj;
        stackPos++;
        if (stackPos>=stack.length) {
            System.err.println("Stack overflow.");
            System.exit(0);
        }
    }
    public Object[] getStack() {
        return stack;
    }
    public int getStackPos() {
        return stackPos;
    }
}
