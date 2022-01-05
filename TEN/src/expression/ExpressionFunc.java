/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;
import java.util.*;
/**
 *
 * @author Coolo
 */
public class ExpressionFunc extends Expression {
    private static int FuncID = 0;
    private Expression block;
    private LinkedList<String> parameter;
    public ExpressionFunc(Expression block, LinkedList<String> parameter) {
        this.block = block;
        this.parameter = parameter;
    }
    public String generate() {
        String str = "";
        int id = FuncID;
        FuncID++;
        str += "funcdef "+id+"\n";
        //nun alle werte der parameter bekomme
        str+="pushstring \"__parameter\"\n";
        str+="getidentifier\n";
        str+="pushstring \"self\"\n";
        str+="gettable\n";
        str+="setinv\n";
        str+="pop\n";
        if (parameter.size()>0) {
            Iterator<String> it = parameter.descendingIterator();
            String param = it.next();
            while (param != null) {
                str+="pushstring \"__parameter\"\n";
                str+="getidentifier\n";
                str+="pushstring \""+param+"\"\n";
                str+="gettable\n";
                str+="setinv\n";
                str+="pop\n";
                if (it.hasNext()) param = it.next(); else param = null;
            }
        }
        str += block.generate();
        str += "pushint 0\n";
        str += "return\n";
        str += "enddef "+id+"\n";

        return str;
    }
}
