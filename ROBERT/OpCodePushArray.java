
/**
 * Pusht die Array Referenz als ein ganzes auf den Stack
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodePushArray extends OpCode{
    public void execute(VM vm) {
        int ref=vm.getRC();
        Array arr=(Array)vm.get(ref);
        vm.push(arr);
        vm.setRC(vm.getSC());
    }
}
