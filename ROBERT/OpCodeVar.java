
/**
 * Eine Variable
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeVar extends OpCode {
    public void execute(VM vm) {
        int pos=0;
        if (vm.getRC()<0) 
            pos=vm.getLPC()+((-vm.getRC())-1);
        else
            pos=vm.getLVC()+vm.getRC();

        vm.push(vm.get(pos));
    }
}
