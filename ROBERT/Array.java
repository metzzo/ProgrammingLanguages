
/**
 * Ein eindimensionales Array
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class Array {   
    private Object[] member;
    private VM vm;
    public int dimCount;
    public Array(int dim, VM vm) {
        this.vm=vm;
        dimCount=dim;
        int size=(Integer)vm.pop();
        member=new Object[size+1];
        if (dim>0) {
            int size2=(Integer)vm.pop();
            for (int i=0;i<size+1;i++) {
                vm.push(size2);
                member[i]=new Array(dim-1, vm);
            }
        }
    }
    public Object get(int pos) {
        if (member[pos] instanceof Array) {
            Integer pos2=(Integer)vm.pop();
            return ((Array)member[pos]).get(pos2);
        } else return member[pos];
    }
    public void set(int pos, Object obj) {
        if (member[pos] instanceof Array) {
            Integer pos2=(Integer)vm.pop();
            ((Array)member[pos]).set(pos2, obj);
        } else member[pos]=obj;
    }
}
