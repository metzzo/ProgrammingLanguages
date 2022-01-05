
import java.util.*;
/**
 * Function ist eine Klasse welche eine Funktion (Print, Waitkey, ..) darstellt.
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public abstract class Function{
    public static ArrayList<FunctionUser> userFunc=new ArrayList<FunctionUser>();
    private String dataType;
    private LinkedList<String> parameter;
    private String name;
    public boolean isArray;
    
    public static Function[] createFunction() {
        Function func[]=new Function[2+userFunc.size()];
        func[0]=new FunctionPrint();
        func[1]=new FunctionToString();
        
        int i=2;
        for (FunctionUser usrFunc:userFunc) {
            func[i]=usrFunc;
            i++;
        }
        
        return func;
    }
    public static void registerExternalFunction(FunctionUser func){
        for (FunctionUser usrFunc:userFunc) {
            if (func==usrFunc) return;
        }
        userFunc.add(func);
    } 
    public void init(String name) {
        this.name=name;
        dataType="void";
        parameter=new LinkedList<String>();
    }
    public void setDatatype(String type){
        this.dataType=type;
    } 
    public void addParameter(String param) {
        parameter.add(param);
    }
    public String getDatatype() {return dataType;}
    public String getName() {return name;}
    public LinkedList<String> getParameter() {return parameter;}
    public abstract void execute(VM vm);
}
