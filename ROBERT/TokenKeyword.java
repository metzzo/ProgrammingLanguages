/**
 * Ein Keyword als Token
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class TokenKeyword extends Token{
    public final static byte ID=8;
    private String key;
    private int typ;
    public TokenKeyword(String key) {
        this.key=key;
    } 
    public String toString() {return key;}
    public int getId() {return ID;}
    public int getTyp() {return typ;}
}