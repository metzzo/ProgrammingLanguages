
/**
 * Gibt den Wert eines Array zurück
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeGetArray extends OpCode{
    public void execute(VM vm) {
        int ref=vm.getRC();
        Array arr=(Array)vm.get(ref);
        int pos=(Integer)vm.pop();
        vm.push(arr.get(pos));
    }
}
