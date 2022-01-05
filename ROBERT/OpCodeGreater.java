
/**
 * größer
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeGreater extends OpCode {
    public void execute(VM vm) {
        Object val2=vm.pop();
        Object val1=vm.pop();
        if (val1 instanceof Float && val2 instanceof Integer) {
            val2=new Float((Integer)val2);
        } else if (val1 instanceof Integer && val2 instanceof Float) {
            val1=new Float((Integer)val1);
        }
        Object val=null;
        if (val1 instanceof Integer && val2 instanceof Integer) {
            boolean tmp=(Integer)val1>(Integer)val2;
            if (tmp) val=new Integer(1); else val=new Integer(0);
        } else if (val1 instanceof Float && val2 instanceof Float) {
            boolean tmp=(Float)val1>(Float)val2;
            if (tmp) val=new Integer(1); else val=new Integer(0);
        }
        vm.push(val);
    }
}
