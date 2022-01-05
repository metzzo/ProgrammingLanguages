
/**
 * Ein Frame speichert alle notwendigen Informationen ab welche bei einem Funktionsaufruf gespeichert werden müssen (Register usw.)
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class Frame {
    private VM vm;
    private int pc, lvc, fc, sc, lpc, rc;
    public Frame(VM vm) {
        pc=vm.getPC();
        lvc=vm.getLVC();
        fc=vm.getFC();
        sc=vm.getSC();
        lpc=vm.getLPC();
        rc=vm.getRC();
        this.vm=vm;
    }
    public void use() {
        vm.setPC(pc);
        vm.setLVC(lvc);
        vm.setFC(fc);
        vm.setSC(sc);
        vm.setLPC(lpc);
        vm.setRC(rc);
    }
    public void moveSC(int count) {
        sc+=count;
    }
}
