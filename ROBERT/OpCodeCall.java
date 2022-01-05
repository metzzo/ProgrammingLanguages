
/**
 * Funktionsaufruf
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeCall extends OpCode {
    public int id;
    public void execute(VM vm) {
        Function func=(Function)vm.get(id+vm.getFC());
        func.execute(vm);
    }
    public OpCodeCall(int id){
        this.id=id;
    } 
}
