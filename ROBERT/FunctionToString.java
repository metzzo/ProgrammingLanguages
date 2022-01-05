
/**
 * Wandelt eine Integer in einen String um
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class FunctionToString extends Function{
    public void execute(VM vm) {
        Object tmp=vm.pop();
        if (tmp instanceof Integer) vm.push(""+((Integer)tmp));
        if (tmp instanceof Float) vm.push(""+((Float)tmp));
        if (tmp instanceof String) vm.push(""+((String)tmp));
    }
    public FunctionToString() {
        this.init("toString");
        this.addParameter("");
        this.setDatatype("string");
    }
}
