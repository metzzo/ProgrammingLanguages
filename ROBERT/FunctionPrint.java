
/**
 * Eine einfache Anweisung etwas in die Konsole zu schreiben
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class FunctionPrint extends Function{
    public FunctionPrint(){
        this.init("print");
        this.addParameter("string");
    }
    public void execute(VM vm) {
        String txt=(String)vm.pop();
        System.out.println(txt);
    }
}
