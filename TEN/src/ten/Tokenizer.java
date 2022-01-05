/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ten;

import java.util.*;

/**
 *
 * @author Coolo
 */
public class Tokenizer {
    public static String splitToken[] = {
    "<=","=>","=<","!=","==",
    " ","\t","\n",":","--",
    "+", "-", "*", "/",
    ",","(",")",".",
    "=","[","]","{",
    "}","\"","'","<",
    ">","?","!","%","&"
    };
    private String input;
    private LinkedList<String> list;
    public Tokenizer(String input) {
        this.input = input+"\n";
    }

    public void tokenize() {
        LinkedList <String> tokens = new LinkedList<String>();
        int lastFound=0;
        
        for (int i=0;i<input.length();i++) {
            for (String split: splitToken) {
                if ((i + split.length()-1)<input.length() && input.substring(i,i + split.length()).equals(split)) {
                    if (!input.substring(lastFound,i).trim().equals("")) {
                        tokens.add(input.substring(lastFound,i));
                    }
                    tokens.add(split);
                    //i = i + split.length();

                    lastFound = i + split.length();
                    i +=  split.length()-1;
                    break;
                }
            }
        }

        tokens.add("\n");
        //for (String s: tokens) System.out.println(s);
        //System.out.println("-------------------------");
        
        list = tokens;
    }

    public LinkedList<String> getTokens() {
        return list;
    }
}
