
/**
 * Multiplizieren
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeMul extends OpCode {
    public void execute(VM vm) {
        Object val1=vm.pop();
        Object val2=vm.pop();
        if (val1 instanceof Float && val2 instanceof Integer) {
            val2=new Float((Integer)val2);
        } else if (val1 instanceof Integer && val2 instanceof Float) {
            val1=new Float((Integer)val1);
        }
        Object val=null;
        if (val1 instanceof Integer && val2 instanceof Integer) {
            val=(Integer)val1*(Integer)val2;
        } else if (val1 instanceof Float && val2 instanceof Float) {
            val=(Float)val1*(Float)val2;
        }
        vm.push(val);
    }
}
