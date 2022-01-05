/**
 * Ein Datentyp als Token
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class TokenDatatype extends Token{
    public final static byte ID=5;
    private String typ;
    private int data;
    public TokenDatatype(String typ) {
        this.typ=typ;
    } 
    public String toString() {return typ;}
    public int getId() {return ID;}
    public int getTyp() {return data;}
}