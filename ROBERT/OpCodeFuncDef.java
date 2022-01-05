
/**
 * Definieren einer Funktion
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeFuncDef extends OpCode {
    private int pos;
    private String name;
    public void execute(VM vm) {
        int pos=this.pos+vm.getFC();
        for (int i=0;i<vm.func.length;i++) {
            if (vm.func[i].getName().equals(name)) {
                vm.argSet(pos,vm.func[i]);
                break;
            }
        }
    }
    public OpCodeFuncDef(int pos, String name) {
        this.pos=pos;
        this.name=name;
    }
}
