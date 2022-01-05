
/**
 * Definieren eines Parameter
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeParamDef extends OpCode {
    private int pos;
    private String type;
    
    public void execute(VM vm) {
        int pos=this.pos+vm.getLPC();
        Object obj=vm.pop();
        if (type.equals("int")) {
            vm.argSet(pos, obj);
        } else if (type.equals("float")) {
            vm.argSet(pos, obj);
        } else if (type.equals("string")) {
            vm.argSet(pos, obj);
        }
    }
    public OpCodeParamDef(int pos, String type) {
        this.pos=pos;
        this.type=type;
    }
}
