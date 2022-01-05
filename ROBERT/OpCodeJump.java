
/**
 * Sprung
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeJump extends OpCode {
    public int id;
    public void execute(VM vm) {
        vm.jumpTo(id);
    }
    public OpCodeJump(int id){
        this.id=id;
    } 
}
