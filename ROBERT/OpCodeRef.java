
/**
 * Schreibt eine Referenz in den RC (reference Counter)
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeRef extends OpCode{
    private int pos;
    public void execute(VM vm) {
        if (pos<0) {
            int tmp=(vm.getLPC()+(-pos)-1);
            vm.setRC(tmp);
        } else vm.setRC(vm.getLVC()+pos);
    }
    public OpCodeRef(int pos) {
        this.pos=pos;
    }
}
