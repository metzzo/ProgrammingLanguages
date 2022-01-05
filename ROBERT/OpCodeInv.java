
/**
 * IInvertiert oberstes Ergebnis
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeInv extends OpCode {
    public void execute(VM vm) {
        Object obj=vm.pop();
        if (obj instanceof Integer) {
            int var=(Integer)obj;
            if (var==0) {
                vm.push(new Integer(1));
            } else {
                vm.push(new Integer(0));
            }
        } else if (obj instanceof Float) {
            Float var=(Float)obj;
            if (var==0.0f) {
                vm.push(new Integer(1));
            } else {
                vm.push(new Integer(0));
            }
        } else System.err.println("Execution error");
    }
}
