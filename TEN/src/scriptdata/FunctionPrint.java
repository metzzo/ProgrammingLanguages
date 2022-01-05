/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package scriptdata;
import vm.*;
/**
 *
 * @author Coolo
 */
public class FunctionPrint extends Function {
    public FunctionPrint() {
        setName("print");
    }
    public void call(VM vm) {
        String str = vm.popString();
        System.out.println(str);

        vm.getFrame().push(new Integer(0));
    }
}
