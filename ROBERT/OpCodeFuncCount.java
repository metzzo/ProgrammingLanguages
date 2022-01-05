
/**
 * Wie viele Funktionen gibt es?
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeFuncCount extends OpCode {
    private int count;
    public void execute(VM vm) {
        int pos=vm.getSC()+count;
        vm.setFC(vm.getSC());
        vm.setSC(pos);
    }
    public OpCodeFuncCount(int count) {
        this.count=count;
    }
}
