/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package extra;

/**
 *
 * @author Coolo
 */
public class Operator {
    public static int maxPrio;
    private String name;
    private String opCode;
    private int prio;
    

    public Operator(String name, String opCode, int prio) {
        this.name = name;
        this.opCode = opCode;
        this.prio = prio;
        if (prio>maxPrio) maxPrio = prio;
    }

    public int getPrio(){
        return prio;
    }

    public String getName() {
        return name;
    }
    public String getOpCode() {
        return opCode;
    }
}
