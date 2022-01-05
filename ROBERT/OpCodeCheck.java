
/**
 * Wenn oberster Stack Eintrag !=null -> führe in aus, ansonsten überspringe
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeCheck extends OpCode {
    public void execute(VM vm) {
        Object obj=vm.pop();
        if (obj instanceof Integer) {
            if ((Integer)obj==0) vm.setPC(vm.getPC()+1); 
        } else if (obj instanceof Float) {
            if ((Float)obj==0.0f) vm.setPC(vm.getPC()+1); 
        }
    }
}
