
/**
 * Ein Quellcode bestandteil
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public abstract class Token {
    public int line;
    public Token() {
        this.line=Lexer.currentLine;
    }
    public int getId() {return 0;}
}
