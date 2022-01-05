package Compiler.Lexer;
import java.util.*;
import Compiler.*;

/**
 * Lexer zerteilt den übergebenenen String in die einzelnen Bestandteile.
 * @author Coolo
 */
public class Lexer {
    private LinkedList<Token> tokens;
    private static final String[] split = {
        "<<",">>","<=","=>","=<","!=","==","++",
        " ","\t","\n",":","--","+=","-=",
        "+", "-", "*", "/","..",
        ",","(",")",".",
        "=","[","]","{",
        "}","\"","'","<",
        ">","?","!","%","&","\""
    };
    /**
     * Lext das ganze
     * @param input Der String der gelext wird
     */
    public Lexer(String input) {
        tokens = new LinkedList<Token>();
        String[] lines = input.split("\n");
        int lastFound;
        for (int i = 0;i<lines.length;i++) {
            String line = lines[i];
            lastFound = 0;
            for (int j = 0;j<=line.length();j++) {
                for (String s: split) {
                    if ((j + s.length()) <= line.length() && s.equals(line.substring(j,  j + s.length()))) {
                        Token t1 = new Token(line.substring(lastFound, j),line,i,lastFound);
                        tokens.add(t1);
                        
                        Token t2 = new Token(s,line,i,j);
                        tokens.add(t2);

                        

                        lastFound = j + s.length();
                        j += s.length() - 1;
                        break;
                    }
                }
            }
            Token t = new Token(line.substring(lastFound),line,i,lastFound);
            tokens.add(t);
            t = new Token("\n",line,i,lastFound + 1);
            tokens.add(t);
        }
        
        LinkedList<Token> newList = new LinkedList<Token>();
        ListIterator<Token> it = tokens.listIterator();
        while (it.hasNext()) {
            Token t = it.next();
            if (t.getText().equals("\"")) {
                String str = "\"";
                while (it.hasNext()) {
                    t = it.next();
                    str += t.getText();
                    if (t.getText().equals("\"")) break;
                }
                t = new Token(str,t.getWholeLine(),t.getLine(),t.getPos());
                newList.add(t);
            } else if (t.getText().equals("/")) {
                Token tmp = t;
                if (it.hasNext()) {
                    t = it.next();
                    if (t.getText().equals("")) t = it.next();

                    if (t.getText().equals("/")) {
                        while (!t.getText().equals("\n") && it.hasNext()) {
                            t = it.next();
                        }
                    } else {
                        newList.add(tmp);
                        newList.add(t);
                    }
                }
            } else if (t.getText().equals(">>")) {
                String str = "";
                Token tok = t;
                t = it.next();
                while (!t.getText().equals("<<")) {
                    str += t.getText();
                    t = it.next();
                }
                newList.add(new Token(str, tok.getWholeLine(),tok.getLine(),tok.getPos()));
                t = it.next();
            } else if (t.getText().equals("\n") && it.hasNext()) {
                Token t2 = t;

                while ((t.getText().equals("\n") || t.getText().equals(" ") || t.getText().equals("") || t.getText().equals("\t")) && it.hasNext()) {
                    t = it.next();
                    if (t.getText().equals(""))
                        t = it.next();
                }
                newList.add(t2);
                t = it.previous();

            } else if (t.getText().equals(".")) {
                Token tmp = t;
                t = it.next();
                try {
                    long a = new Long(t.getText());
                    newList.add(new Token("0."+a,tmp.getWholeLine(),tmp.getLine(),tmp.getPos()));
                } catch (NumberFormatException ex) {
                    tmp.lower();
                    t.lower();
                    newList.add(tmp);
                    newList.add(t);
                }
            } else {
                try {
                    Token tmp = t;
                    long a = new Long(t.getText());
                    t = it.next();
                    if (t.getText().equals(".")) {
                        Token dot = t;
                        t = it.next();
                        long b = 0;
                        try {
                            b = new Long(t.getText());
                        } catch(NumberFormatException ex) {
                            tmp.lower();
                            dot.lower();
                            t.lower();
                            newList.add(tmp);
                            newList.add(dot);
                            newList.add(t);
                            continue;
                        }
                        newList.add(new Token(a+"."+b,tmp.getWholeLine(),tmp.getLine(),tmp.getPos()));
                        continue;
                    } else {
                        newList.add(tmp);
                    }
                } catch (NumberFormatException ex) {}
                t.lower();
                newList.add(t);
            }
        }
        tokens = newList;
        //tokens.addFirst(new Token("do","do",0,0));
        //tokens.addLast(new Token("end","end",0,0));
        
        //aufräumen
        it = tokens.listIterator();
        while (it.hasNext()) {
            Token t = it.next();
            if (t.getText().equals(" ") || t.getText().equals("\t") || t.getText().equals(""))
                it.remove();
        }
        tokens.addLast(new Token("","",0,0));
        
        for (Token tok: tokens) {
            //System.out.println(tok.getText());
        }
    }
    
    /**
     * Gibt alle Tokens zurück
     * @return Die Linkedlist mit den tokens
     */
    public LinkedList<Token> getTokens() {
        return tokens;
    }
}
