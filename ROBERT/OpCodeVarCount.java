
/**
 * Wie viele Variablen gibt es
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeVarCount extends OpCode {
    private int count;
    public void execute(VM vm) {
        int pos=vm.getSC()+count;
        vm.setLVC(vm.getSC());
        vm.setSC(pos);
    }
    public OpCodeVarCount(int count) {
        this.count=count;
    }
}
