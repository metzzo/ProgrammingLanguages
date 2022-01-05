
/**
 * Popt die Array Referenz als ein ganzes auf den Stack
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeGetPopArray extends OpCode{
    public void execute(VM vm) {
        int ref=vm.getRC();
        Array arr=(Array)vm.get(ref);
        int pos[]=new int[arr.dimCount+1];
        for (int i=0;i<pos.length;i++) {
            pos[i]=(Integer)vm.pop();
        }
        vm.pop();
        for (int i=1;i<pos.length;i++) {
            vm.push(new Integer(pos[i]));
        }
        vm.push(arr.get(pos[0]));
    }
}
