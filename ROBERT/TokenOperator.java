/**
 * Ein Operator als Token
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class TokenOperator extends Token{
    public final static byte ID=7;
    private String operator;
    private int typ;
    public TokenOperator(String operator) {
        this.operator=operator;
    } 
    public String toString() {
        return operator;
    }
    public int getTyp() {return typ;}
    public int getId() {return ID;}
}
