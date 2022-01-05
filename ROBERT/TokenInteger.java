/**
 * Eine Zahl als Integer
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class TokenInteger extends Token{
    public final static byte ID=3;
    private int val;
    public TokenInteger(int val) {
        this.val=val;
    } 
    public String toString() {
        return ""+val;
    }
    public int getVal() {return val;} 
    public int getId() {return ID;}
}