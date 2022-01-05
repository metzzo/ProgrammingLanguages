/**
 * Ein Unbekannter Token
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class TokenUnknown extends Token{
    public final static byte ID=1;
    private String val;
    public boolean isVariable;
    public boolean isArray;
    
    public TokenUnknown(String val) {
        this.val=val;
    }
    public String toString() {return val;}
    public int getId() {return ID;}
}