import java.util.*;
/**
 * Zerteilt einen String in kleine Tokens
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class Lexer  {
    public static int currentLine;
    private String[] splitKey;
    private String[] operator;
    private String[] datatype;
    private String[] keyWord;
    private String text;
    private ArrayList<Function> function;
    private ArrayList<String> list;
    private ArrayList<Token> token;
    public Token currentToken;
    
    public Lexer(String str) {
        text="begin \n"+str+"\n end";
        initSyntax();
    }
    
    private void initSyntax() {
        splitKey=new String[12];
        splitKey[0]=",";
        splitKey[1]=")";
        splitKey[2]="(";
        splitKey[3]=":";
        splitKey[4]="[";
        splitKey[5]="]";
        splitKey[6]="{";
        splitKey[7]="}";
        splitKey[8]=" ";
        splitKey[9]="\t";
        splitKey[10]=";";
        splitKey[11]="\n";
        
        operator=new String[20];
        operator[0]="+";
        operator[1]="-";
        operator[2]="*";
        operator[3]="/";
        operator[4]="^";
        operator[5]="<";
        operator[6]=">";
        operator[7]="<=";
        operator[8]=">=";
        operator[9]="==";
        operator[10]="!=";
        operator[11]="=";
        operator[12]=".";
        operator[13]="not";
        operator[14]="and";
        operator[15]="or";
        operator[16]="xor";
        operator[17]="mod";
        operator[18]="new";
        operator[19]="&";
        
        keyWord=new String[16];
        keyWord[0]="if";
        keyWord[1]="while";
        keyWord[2]="for";
        keyWord[3]="do";
        keyWord[4]="return";
        keyWord[5]="end";
        keyWord[6]="begin";
        keyWord[7]="var";
        keyWord[8]="return";
        keyWord[9]="break";
        keyWord[10]="else";
        keyWord[11]="definition";
        keyWord[12]="func";
        keyWord[13]="forever";
        keyWord[14]="dim";
        keyWord[15]="ref";
        
        function=new ArrayList<Function>();
        Function[] func=Function.createFunction();
        for(Function f:func) {
            function.add(f);
        }
    }
    public Function[] getFunction() {
        Function[] newFunction=new Function[function.size()];
        Iterator it=function.iterator();
        for(int i=0;i<function.size();i++) newFunction[i]=(Function)it.next();
        return newFunction;
    }
    public ArrayList<Token> tokenize() {
        list=new ArrayList<String>();
        String lines[]=text.split("\n");
        for (int i=0;i<lines.length;i++) {
            String currentWord="";
            String currentLine=lines[i]+" ";
            for (int j=0;j<currentLine.length();j++) {
                char character=currentLine.charAt(j);
                if (character=='"') {
                    int start=j+1;
                    for (j=j+1;j<currentLine.length();j++) {
                        if (currentLine.charAt(j)=='"') {
                            list.add('"'+currentLine.substring(start,j)+'"');
                            break;
                        }
                    }
                    continue;
                }
                boolean find=false;
                for (int k=0; k<splitKey.length;k++) {
                    if (character==splitKey[k].charAt(0)) {
                        list.add(currentWord);
                        if (splitKey[k].charAt(0)!='\t' && splitKey[k].charAt(0)!=' ') list.add(""+splitKey[k].charAt(0));
                        currentWord="";
                        find=true;
                        break;
                    }
                }
                if (find) continue;
                for (int k=0; k<operator.length;k++) {
                    if (character==operator[k].charAt(0) && operator[k].length()==1) {
                        if (currentLine.charAt(j+1)=='=' && character=='=') {
                            list.add(currentWord);
                            list.add("==");
                            j++;
                            currentWord="";
                            find=true;
                            break;
                        } else {
                            list.add(currentWord);
                            if (operator[k].charAt(0)!='\t' && operator[k].charAt(0)!=' ') list.add(""+operator[k]);
                            currentWord="";
                            find=true;
                            break;
                        }
                    }
                }
                if (!find) currentWord+=""+character;
            }
            list.add("\n");
        }
        while (list.contains("")) {
            int index=list.indexOf("");
            list.remove(index);
        }
        token=new ArrayList<Token>();
        currentLine=-1;
        for (String str:list) {
             boolean found=false;
             for (int i=0; i<operator.length;i++) {
                if (str.equals(operator[i])) {
                    token.add(new TokenOperator(operator[i]));
                    found=true;
                    break;
                }
             }
             if (found) continue;
             for (int i=0; i<keyWord.length;i++) {
                if (str.equals(keyWord[i])) {
                    token.add(new TokenKeyword(str));
                    found=true;
                    break;
                }
             }
             if (found) continue;
             for (int i=0; i<splitKey.length;i++) {
                if (str.equals(splitKey[i])) {
                    if (str.equals("\n"))
                        currentLine++;
                    else
                        token.add(new TokenSplitkey(splitKey[i]));
                    found=true;
                    break;
                }
             }
             if (found) continue;
             Iterator iterator=function.iterator();
             Function func;
             while(iterator.hasNext()) {
                func=(Function)iterator.next();
                if (str.equals(func.getName())) {
                    token.add(new TokenFunction(func));
                    found=true;
                    break;
                }
             }
             if (found) continue;
             if (isInt(str)) {
                 token.add(new TokenInteger(new Integer(str)));
                 found=true;
             } else if(isFloat(str)) {
                 token.add(new TokenFloat(new Float(str)));
                 found=true;
             } else if (str.charAt(0)=='"' && str.charAt(str.length()-1)=='"') {
                  token.add(new TokenString(str));
                  found=true;
             } else if (str.equals("int") || str.equals("float") || str.equals("string") || str.equals("void")) {
                 token.add(new TokenDatatype(str));
                 found=true;
             }
             if (!found) token.add(new TokenUnknown(str));
        }
        return token;
    }
     /**
     * Überprüft ob ein String ein Int ist
     */
    public static boolean isInt(String val) {
        try {
            Integer.parseInt(val);
            return true;
        } catch(NumberFormatException e) { 
            return false;
        }
    }
    /**
     * Überprüft ob ein String ein Float ist
     */
    public static boolean isFloat(String val) {
        try {
            Float.parseFloat(val);
            return true;
        } catch(NumberFormatException e) { 
            return false;
        }
    }
}
