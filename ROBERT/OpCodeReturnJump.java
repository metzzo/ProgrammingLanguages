
/**
 * SPringt aus der Funktion
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeReturnJump extends OpCode {
    private int ret;
    
    public void execute(VM vm) {
        // Nächstes Frame Object suchen#
        Object objPop=null;
        if (ret>0)  objPop=vm.pop();
        Object obj=vm.pop();
        while (!(obj instanceof Frame)) {
            obj=vm.pop();
        }
        Frame frm=(Frame)obj;
        frm.use();
        
        if (objPop!=null) vm.push(objPop);
    }
    public OpCodeReturnJump(int ret) {
        this.ret=ret;
    }
    public int getRet(){ return ret; } 
}
