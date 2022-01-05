import java.util.*;
/**
 * Eine im Programm erstellte Funktion
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class FunctionUser extends Function{
    private int id;
    private OpCodeFunctionLabel lbl;
    private String[] datatypeParam, nameParam;
    private int paramCount;
    
    public void setJmpPos(OpCodeFunctionLabel lbl) {
        this.lbl=lbl;
    }
    public FunctionUser(String name, String dataType){
        this.init(name);
        this.setDatatype(dataType);
        this.id=id;
        datatypeParam=new String[64];
        nameParam=new String[64];
    }
    public void execute(VM vm) {
        vm.push(new Frame(vm));
        vm.push(new Integer(0));
        if (lbl==null) System.err.println("Jmp pos not set");
        vm.setPC(lbl.jmpTo());
    }
    public void addParam(String name, String dataType) {
        datatypeParam[paramCount]=name;
        nameParam[paramCount]=dataType;
        addParameter(dataType);
        paramCount++;
    }
}
