/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package vm;

/**
 *
 * @author Coolo
 */
public abstract class Function {
    protected String name;

    public void setName(String name) {
        this.name = name;
    }
    public String getName() {
        return name;
    }
    
    public abstract void call(VM vm);
}
