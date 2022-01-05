
/**
 * Setzt einen Wert an die Position im Array
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeSetArray extends OpCode{
    public void execute(VM vm) {
        int ref=vm.getRC();
        Array arr=(Array)vm.get(ref);
        Object val=vm.pop();
        int pos=(Integer)vm.pop();
        arr.set(pos, val);
    }
}
