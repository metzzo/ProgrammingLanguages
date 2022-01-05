package lumpy;

import Compiler.Import;
import Compiler.Lexer.*;
import Compiler.Parser.*;
import Compiler.Parser.Expression.ExpressionManagerC;
import Compiler.SyntaxException;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.*;

/**
 * Mainprogramm
 * @author Coolo
 */
public class Main {
    public static LinkedList<Import> imports = new LinkedList<Import>();
 
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String input = readFile("file.ly");
        String template = readFile("data/template_c");
        try {
            System.out.flush();
            Parser mainParser = new CParser(new Lexer(input), new ExpressionManagerC(),"/");
            mainParser.compile();
            
            if (!SyntaxException.wasError) {
                mainParser.generate(template,true);
                
                System.out.println(mainParser.getGeneratedCode());
                
                for (Import imp2: imports) {
                    if (imp2.getParser() != null && imp2.getParser()!= mainParser) imp2.getParser().generate(template,false);
                }


                for (Import imp2: imports) {
                    if (imp2.getParser() != null) imp2.getParser().backend();
                }
                

                mainParser.link(imports);

                mainParser.execute();
            } else {
                throw new SyntaxException(null, "",null,false);
            }
        } catch (SyntaxException ex) {
            System.out.println(ex.genError());
            //ex.printStackTrace();
        }
    }

    public static String readFile(String path) {
        String input = "";
        BufferedReader reader = null;
        try {
           reader = new BufferedReader(new FileReader(path));
           String tmp = reader.readLine()+"\n";
           while (tmp != null) {
               input += tmp+"\n";
               tmp = reader.readLine();
           }
           reader.close();
        } catch (IOException ex) {
            System.out.println("File not found: "+path);
            ex.printStackTrace();
        }
        return input;
    }
}
