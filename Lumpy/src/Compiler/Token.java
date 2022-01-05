package Compiler;

/**
 * Ein einzelnes Token.
 * @author Coolo
 */
public class Token {
    private int line = 0; //Die Zeile in der das Token steht
    private int pos = 0; //Die Position in der Zeile des Token
    private String wholeLine = ""; //Der Text in der gegebenen Zeile.
    private String text = ""; //Der Text des Token

    public Token(String text, String wholeLine, int line, int pos) {
        this.line = line + 1;
        this.pos = pos;
        this.text = text;
        this.wholeLine = wholeLine;
    }

    /**
     * Die Zeile des Token
     * @return zeile
     */
    public int getLine() {
        return line;
    }
    /**
     * Die Position des Token
     * @return posi
     */
    public int getPos() {
        return pos;
    }
    /**
     * Der Inhalt der gesamten Zeile
     * @return zeileninhalt
     */
    public String getWholeLine() {
        return wholeLine;
    }
    /**
     * Den Inhalt des Token
     * @return tokeninhalt
     */
    public String getText() {
        return text;
    }
    /**
     * Macht den Text des Tokens klein geschrieben
     */
    public void lower() {
        text = text.toLowerCase();
    }

    /**
     * Setzt den Text (unsicher, mit vorsicht verwenden)
     */
    public void setText(String txt) {
        this.text = txt;
    }
}