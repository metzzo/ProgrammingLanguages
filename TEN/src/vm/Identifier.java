/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package vm;
import java.util.*;

/**
 *
 * @author Coolo
 */
public class Identifier {
    private String name;
    private Object value = new NullDatatype();

    public Identifier(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
    public void setName(String name ) {
        this.name = name;
    }
    public Object getValue() {
        return value;
    }
    
    public void newIdentifier(Identifier ident) {
        if (value == null || !(value instanceof HashMap)) value = new HashMap<String, Identifier>();
        ((HashMap)value).put(ident.name, ident);
    }
    public boolean has(String str) {
        if (value == null) return false;
        if (value instanceof HashMap) {
            return ((HashMap)value).containsKey(str);
        } else {
            if (value instanceof Identifier) {
                return ((Identifier)value).getName().equals(str);
            } else
                return false;
        }
    }
    public Identifier getIdentifier(String name) {
        if (! (value instanceof HashMap)) {
            Identifier ident;
            if (value == null) {
                //ident = new Identifier(name);
                //newIdentifier(ident);
                return null;
            } else {
                ident = this;
            }
            return ident;
        } else {
            if (!((HashMap)value).containsKey(name)) {
                Identifier ident = new Identifier(name);
                newIdentifier(ident);
                return ident;
            } else {
                return (Identifier)((HashMap)value).get( name );
            }
        }
    }
    public void set(Object result) {
        if (result instanceof Identifier) {
            value = ((Identifier)result).getValue();
        } else {
            value = result;
        }
        
    }
}
