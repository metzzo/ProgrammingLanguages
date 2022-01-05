
/**
 * addieren
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeAdd extends OpCode {
    public void execute(VM vm) {
        Object val1=vm.pop();
        Object val2=vm.pop();
        Object val=null;
        if (val1==null || val2==null) System.err.println("Cannto add Null Objects");
        if (val1 instanceof String && val2 instanceof String) {
            val=(String)val2+(String)val1;
        }
        if (val1 instanceof String) {
            if (val2 instanceof Integer) {
                val=(String)val1+(Integer)val2;
            } else if (val2 instanceof Float) {
                val=(String)val1+(Float)val2;
            }
        } else if (val2 instanceof String) {
            Object tmp=val1;
            val1=val2;
            val2=tmp;
            if (val2 instanceof Integer) {
                val=(String)val1+(Integer)val2;
            } else if (val2 instanceof Float) {
                val=(String)val1+(Float)val2;
            }
        }
        if (val1 instanceof Float && val2 instanceof Integer) {
            val2=new Float((Integer)val2);
        } else if (val1 instanceof Integer && val2 instanceof Float) {
            val1=new Float((Integer)val1);
        }
        if (val1 instanceof Integer && val2 instanceof Integer) {
            val=(Integer)val1+(Integer)val2;
        } else if (val1 instanceof Float && val2 instanceof Float) {
            val=(Float)val1+(Float)val2;
        }
        vm.push(val);
    }
}
