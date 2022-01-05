/**
 * Eine Kommazahl als Token
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class TokenFloat extends Token{
    public final static byte ID=2;
    private float val;
    public TokenFloat(float val) {
        this.val=val;
    } 
    public String toString() {
        return ""+val;
    }
    public int getId() {return ID;}
    public float getVal() {return val;} 
}