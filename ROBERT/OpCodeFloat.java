/**
 * Ist eine kommazahl
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeFloat extends OpCode {
    private Float val;
    public void execute(VM vm) {
        vm.push(val);
    }
    public OpCodeFloat(String code){
        val=new Float(code);
    } 
}