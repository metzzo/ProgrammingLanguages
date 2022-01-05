
/**
 * Wie viele Parameter gibt es
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeParamCount extends OpCode {
    private int count;
    public void execute(VM vm) {
        int pos=vm.getSC()+count;
        vm.setLPC(vm.getSC());
        vm.setSC(pos);
        for (int i=vm.getSC();i>0;i--) { //Nun alle Parameter wieder wegpoppen
            if (vm.get(i) instanceof Frame) {
                Frame frm=(Frame)vm.get(i);
                frm.moveSC(-count);
                for (int j=i-1;j>=(i-count);j--) {
                    Object obj=vm.get(j);
                    vm.push(obj);
                }
                break;
            }
        }
    }
    public OpCodeParamCount(int count) {
        this.count=count;
    }
}
