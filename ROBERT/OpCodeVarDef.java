
/**
 * Definieren einer Funktion
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeVarDef extends OpCode {
    private int pos;
    private String type;
    
    public void execute(VM vm) {
        int pos=this.pos+vm.getLVC();
        if (type.equals("int")) {
            vm.argSet(pos, new Integer(0));
        } else if (type.equals("float")) {
            vm.argSet(pos, new Float(0.0f));
        } else if (type.equals("string")) {
            vm.argSet(pos, "");
        }
    }
    public OpCodeVarDef(int pos, String type) {
        this.pos=pos;
        this.type=type;
    }
}
