/**
 * Ein String als Token
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class TokenString extends Token{
    public final static byte ID=4;
    private String val;
    public TokenString(String val) {
        val=val.substring(1,val.length()-1);
        this.val=val;
    } 
    public String toString() {return '"'+val+'"';}
    public int getId() {return ID;}
    public String getString() {return val;}
}