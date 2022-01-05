
/**
 * Label das zu einer Funktion zeigt
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeFunctionLabel extends OpCode {
    private int jmp;
    public void execute(VM vm) {
        //Wenn es hier ist muss es die Funktion überspringen
        for (int i=vm.getPC();true; i++) {
            if (vm.getOpCode(i) instanceof OpCodeReturnJump) {
                if (((OpCodeReturnJump)vm.getOpCode(i)).getRet()==-1) {
                    vm.setPC(i);
                    break;
                }
            }
        }
    }
    public OpCodeFunctionLabel (VM vm, int pos, int jmp) {
        this.jmp=jmp;
        int i=0;
        for (Function f:vm.func) {
            if ((f instanceof FunctionUser) && i==pos) {
                ((FunctionUser)f).setJmpPos(this);
                break;
            }
            i++;
        }
    }
    public int jmpTo() {
        return jmp;
    }
}
