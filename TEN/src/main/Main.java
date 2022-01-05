/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package main;
import java.io.*;
import ten.Compiler;
import vm.*;
import scriptdata.*;
/**
 *
 * @author Coolo
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String text = "";
        BufferedReader reader = null;
        try {
           reader = new BufferedReader(new FileReader("file.sx"));
           String tmp = reader.readLine();
           while (tmp != null) {
               text += tmp+"\n";
               tmp = reader.readLine();
           }
           reader.close();
        } catch (IOException ex) {
            System.out.println(ex.toString());
            ex.printStackTrace();
            
        }
        Compiler c = new Compiler(text);;
        //try {
            if (!c.compile()) {

                VM vm = new VM(c.getOutput());
                IO.init(vm);
                System.out.println("\n\n\nOUTPUT: ---------------");
                vm.execute();
            } else {
                System.err.println("An error occured.");
            }
        //} catch (Exception ex) {
            
        //}
        
    }

}
