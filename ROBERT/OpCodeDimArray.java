
/**
 * Setzt die Größe/initialisiert ein Array
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class OpCodeDimArray extends OpCode{
    private int dim; 
    public void execute(VM vm) {
        int ref=vm.getRC();
        Array arr=new Array(dim, vm);
        vm.argSet(ref, arr);
    }
    public OpCodeDimArray(int dim) {
        this.dim=dim;
    }
}
