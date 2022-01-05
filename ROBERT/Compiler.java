import java.util.*;
import java.io.*;

/**
 * Verwaltet die einzelnen Bestandteile
 * 
 * @author Robert Fischer
 * @version 1.0
 */
public class Compiler {
    private String input, output;
    private Lexer lexer;
    private Parser parser;
    private Generator gen;
    private VM vm;
    public Compiler()  throws IOException {
        input=readFile("sourceCode.txt");
    }
    public Compiler(String input) {
        this.input=input;
    }
    public void compile() {
        lexer=null;
        parser=null;
        output="";
        Function.userFunc=new ArrayList<FunctionUser>();
        System.out.print('\f');
        lexer=new Lexer(input);
        ArrayList<Token> token=lexer.tokenize();
        parser=new Parser(token);
        parser.parse();
        
        gen=new Generator(this, token);
        
        vm=new VM(gen.generate());
        vm.execute();
    }
    private String readFile(String file) throws IOException {
        FileReader fr = new FileReader(file);
        BufferedReader br = new BufferedReader(fr);
        String line="",tmp="";
        while(tmp!=null) {
            line+=tmp+"\n";
            tmp=br.readLine();
        }
        br.close();
        return line;
    }
}
