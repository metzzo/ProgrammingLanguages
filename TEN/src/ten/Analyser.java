/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ten;
import java.util.*;

/**
 * Außerdem wandelt er die "\t" in "beginscope" und "endscope" um.
 * Ausserdem sucht er die strings und floats und setzt diese zusammen
 * @author Coolo
 */
public class Analyser {
    private LinkedList<String> tokens;
    public Analyser(Tokenizer token) {
        tokens = token.getTokens();
    }
    public void analyse() {
        int step = 0;
        Iterator<String> it = tokens.iterator();
        String token = it.next();
        LinkedList<String> newToken = new LinkedList<String>();
        while(it.hasNext()) {
            if (token.equals("\n")) {
                //schaue wieviele tabs kommen
                newToken.add("\n");
                
                token = it.next();
                int j=0;
                while(token.equals("\t")) {
                    j++;
                    
                    token = it.next();
                }
                if (step<j) {
                    for (int k=0;k<Math.abs(j - step);k++) {
                        newToken.add("\nopt");
                        newToken.add("scopebegin");
                        newToken.add("\nopt");
                    }
                } else if (step>j) {
                    for (int k=0;k<Math.abs(step - j);k++) {
                        newToken.add("\nopt");
                        newToken.add("scopeend");;
                        newToken.add("\nopt");
                        
                    }
                }
                
                step = j;
                //System.out.println("Scopes: "+j);

            } else if (token.equals("\"")) {
                String text = "\"";
                token = it.next();
                while(it.hasNext()) {
                    if (token.equals("\"")) {
                        text += "\"";
                        break;
                    } else {
                        text += token;
                    }
                    token = it.next();
                }
                token = it.next();
                newToken.add(text);
            } else if (token.equals("--")) {
                while (!token.equals("\n")) {
                    token = it.next();
                }
                newToken.add("\n");
            } else {
                int zahl;
                try {
                     zahl = Integer.parseInt(token);
                     token=it.next();
                     if (token.equals(".") && it.hasNext()) { //OMG IT IS A KOMMA
                        token=it.next();
                        newToken.add(zahl + "." + token);
                     } else {
                        newToken.add(""+zahl);
                     }
                } catch(Exception ex) {
                    if (token.trim().length()>0) newToken.add(token);
                    token = it.next();
                }
                
            }
        }
        //newToken.add("__EOF__");
        //for (String s: newToken) System.out.print("__"+s+"__\n");
        tokens = newToken;
    }
    public LinkedList<String> getToken() {
        return tokens;
    }
}
