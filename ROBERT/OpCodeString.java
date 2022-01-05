/**
 * Ist eine zeichenkette
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeString extends OpCode {
    private String val;
    public void execute(VM vm) {
        vm.push(val);
    }
    public OpCodeString(String code){
        val=code;
    } 
}