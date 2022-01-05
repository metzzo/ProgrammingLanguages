
/**
 * Eine Variable
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class Variable {
    public boolean isArray;
    public boolean isClass;
    public int dimCount=1;
    private Object value;
    private String name;
    private String datatype;
    
    public Variable(String name) {
        this.name=name;
    }
    public void setDatatype(String data) {
        datatype=data;
    }
    public Object getValue() {
        return value;
    }
    public void setValue(Object val) {
        value=val;
    }
    public String getDatatype() {return datatype;}
    public String getName() {return name;}
}
