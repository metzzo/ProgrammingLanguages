
/**
 * Schreibt eine Variablen Referenz in den RC (reference Counter)
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeRefVar extends OpCode{
    private int pos;
    public void execute(VM vm) {
        vm.setRC(pos);
    }
    public OpCodeRefVar(int pos) {
        this.pos=pos;
    }
}
