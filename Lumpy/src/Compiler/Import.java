package Compiler;

import Compiler.Parser.Parser;
import java.util.LinkedList;

/**
 * Ein Import.
 * @author Coolo
 */
public class Import {
    public static int ids;
    private String path,text,name;
    private Parser parser;
    private int id;

    public Import(String path) {
        this.path = path;
        id = ids;
        ids++;
    }

    /**
     * Gibt den Path zurück
     */
    public String getPath() {
        return path;
    }

    /**
     * setzt den parser
     */
    public void setParser(Parser p) {
        this.parser = p;
    }
    /**
     * gibt den parser zurück
     */
    public Parser getParser() {
        return parser;
    }
    /**
     * Setzt den Text
     */
    public void setText(String text) {
        this.text = text;
    }
    /**
     * gibt den text zurück
     */
    public String getText() {
        return text;
    }
    /**
     * Setzt den namen
     */
    public void setName(String name) {
        this.name = name;
    }
    /**
     * gibt den namen zurück
     */
    public String getName() {
        return name;
    }
    /**
     * Gibt die id zurück
     */
    public int getID() {
        return id;
    }
}
