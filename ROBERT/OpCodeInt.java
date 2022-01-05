
/**
 * Ist eine ganzzahl
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeInt extends OpCode {
    public Integer val;
    public void execute(VM vm) {
        vm.push(val);
    }
    public OpCodeInt(String code){
        val=new Integer(code);
    } 
}
