
/**
 * Setzen
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeSet extends OpCode {
    public void execute(VM vm) {
        Object val=vm.pop();
        int pos=0;
        if (vm.getRC()<0)
            pos=vm.getLPC()+((-vm.getRC())-1);
        else 
            pos=vm.getLVC()+vm.getRC();
        vm.argSet(pos, val);
    }
}
