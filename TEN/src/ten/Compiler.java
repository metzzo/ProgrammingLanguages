/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ten;

/**
 *
 * @author Coolo
 */
public class Compiler {
    private String input, output;
    public Compiler(String input) {
        this.input = input;
        this.output = "";
    }

    public boolean compile() {
        Tokenizer token;
        Analyser analyse;
        Parser parser;
        Generator generate;

        token=new Tokenizer(input);
        token.tokenize();
        

        analyse=new Analyser(token);
        analyse.analyse();

        parser=new Parser(analyse);
        boolean isError = parser.parse();

        generate=new Generator(parser);
        generate.generate();

        System.out.print("\n\n\n------------------------------\n");
        System.out.print(generate.getOutput());

        output = generate.getOutput();
        
        return isError;
    }

    public String getOutput() {
        return output;
    }
    public String getInput() {
        return input;
    }
}
