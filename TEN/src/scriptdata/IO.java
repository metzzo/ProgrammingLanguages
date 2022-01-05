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
public class IO {
    public static void init(VM vm) {
        vm.register(new FunctionPrint());
        vm.register(new FunctionSaveStack());
        vm.register(new FunctionRestoreStack());
    }
}
