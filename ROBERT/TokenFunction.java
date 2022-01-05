/**
 * Eine Function als Token
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class TokenFunction extends Token{
    public final static byte ID=9;
    private Function func;
    public TokenFunction(Function func) {
        this.func=func;
    } 
    public Function getFunction() {return func;}
    public String toString() {return func.getName();}
    public int getId() {return ID;}
}