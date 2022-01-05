import java.util.*;
/**
 * Ein Trennzeichen als Operator
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class TokenSplitkey extends Token{
    public final static byte ID=6;
    private String split;
    public TokenSplitkey(String key) {
        split=key;
    } 
    public String toString() {
        return split;
    }
    public int getId() {return ID;}
}