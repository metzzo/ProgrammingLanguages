/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Compiler;

import java.util.LinkedList;

/**
 *
 * @author Coolo
 */
public class Operator {
    private String op;
    private int prio;
    private int ret = -1;
    private int[] datatypes;
    private String realName;
    private LinkedList<CodeFunction> overloads = new LinkedList<CodeFunction>();
    /**
     * Erstellt einen neuen Operator
     * @param op Wie der Operator im source steht
     * @param prio Die Priorität
     * @param datatypes Die Datentypen, den dieser Operator verarbeiten kann
     */
    public Operator(String op,String realName, int prio, int[] datatypes) {
        this.op = op;
        this.prio = prio;
        this.datatypes = datatypes;
        this.realName = realName;
    }

    public Operator(String op, String realName, int prio,int[] datatypes,int ret) {
        this(op,realName, prio,datatypes);
        this.ret = ret;
    }
    /**
     * Liefert die Priorität
     * @return
     */
    public int getPrio() {
        return prio;
    }
    /**
     * Liefert den Namen
     * @return
     */
    public String getName() {
        return op;
    }
    /**
     * Liefert alle möglichen Datentypen
     */
    public int[] getPossibleDatatypes() {
        return datatypes;
    }

    /**
     * Lieert den rückgabedatentyp (falls vorhanden)
     */
     public int getReturn() {
         return ret;
     }

     /**
      * Overload
      */
     public void addOverload(CodeFunction func) {
         overloads.add(func);
     }

     /**
      * Liefert den Overload
      *
      */
     public LinkedList<CodeFunction> getOverloads() {
         return overloads;
     }

     /**
      * Liefert die overloads, als Function Datentyp
      */
     public LinkedList<Function> getFunctions() {
         LinkedList<Function> funcs = new LinkedList<Function>();
         for (CodeFunction f: overloads) {
             funcs.add(f);
         }

         return funcs;
     }

     /**
      * Der wahre Name
      */
     public String getRealName() {
         return realName;
     }
}
