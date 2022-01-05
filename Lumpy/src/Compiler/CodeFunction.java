package Compiler;

import Compiler.Parser.Expression.ExpressionBlock;
import Compiler.Parser.Parser;

/**
 * Eine Funktion, die im Code steht. Also mit function() ... end definiert wurde
 * @author Coolo
 */
public class CodeFunction extends Function {
    public static final int IS_NORMAL       = 1000;
    public static final int IS_METHOD       = 1001;
    public static final int IS_CONSTRUCT    = 1002;
    public static final int IS_ANONYME      = 1003;
    public static final int IS_PROPERTY_SET = 1004;
    public static final int IS_PROPERTY_GET = 1005;

    private boolean isGen = false;;
    private Token token;
    private Scope scope;
    private ExpressionBlock block;
    private int typ = IS_NORMAL;
    private int mode = Class.IS_NORMAL; //abstract, final oder normal?
    private boolean duckType = false; //Ist es eine ducktype funktion?
    private boolean triedToDuck = false; //bereits ducktyping probiert?
    /**
     * Konstruktor
     * @param name
     * @param data
     */
    public CodeFunction(String name, Datatype data, Scope scope) {
        super(name, data);
        this.scope = scope;
    }

    /**
     * Setzt das Token, wo die funktion beginnt steht. Hier wird begonnen zu kompilieren, wenn es ausgeführt wird
     * @param token
     */
    public void setStartToken(Token token) {
        this.token = token;
    }
    /**
     * Gibt den starttoken zurück
     */
    public Token getStartToken() {
        return token;
    }
    /**
     * Gibt den Scope zurück
     */
    public Scope getScope() {
        return scope;
    }

    /**
     * Setzt den Block
     */
    public void setBlock(ExpressionBlock b) {
        this.block = b;
    }
    /**
     * gibt den block zurück
     */
    public ExpressionBlock getBlock() {
        return block;
    }

    /**
     * Setzt den Typ
     */
    public void setTyp(int typ) {
        this.typ = typ;
    }

    /**
     * Gibt den Typ zurück
     */
    public int getTyp() {
        return typ;
    }

    /**
     * setzt es als Generator
     */
    public void setAsGenerator() {
        this.isGen = true;
    }

    /**
     * ists ein generator
     */
    public boolean isGenerator() {
        return isGen;
    }

    /**
     * der modus
     */
    public void setMode(int m) {
        this.mode = m;
    }

    /**
     * gibt den modus zurück
     */
    public int getMode() {
        return mode;
    }

    /**
     * Ducktyping
     */
    public void setDuckType() {
        duckType = true;
    }

    /**
     * Ist es ducktype?
     */
    public boolean isDuckType() {
        return duckType;
    }

    /**
     * ducktyping probiert
     */
    public void tryDuck(boolean t) {
        this.triedToDuck = t;
    }

    /**
     * hats schon probiert?
     */
    public boolean duckTry() {
        return triedToDuck;
    }
}
