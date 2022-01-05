import java.util.*;
/**
 * Class ist eine Klasse welche eine abstrakte Schablone für die Instanzen sind
 * 
 * @author Robert Fischer 
 * @version 1.0
 */
public class ClassTemplate {
    private HashMap<String, String> member;
    private String name;
    private boolean reg=false;
    public boolean register() {
        if (reg) {
            return false;
        } else {
            reg=true;
            return true;
        }
    }
    public ClassTemplate(String name) {
        this.name=name;
        member=new HashMap<String, String>();
    }
    public void addAttribut(String name, String dataType) {
        member.put(name, dataType);
    }
    public Iterator getMemberIterator() {
        return member.values().iterator();
    }
    public int getID(String name) {
        Iterator iterator  = member.keySet().iterator();
        int i=0;
        while( iterator. hasNext() ){
            String key=(String) iterator.next();
            if (key.equals(name)) {
                return i;
            }
            i++;
        }
        return -1;
    }
    public String getName() {return name;}
}