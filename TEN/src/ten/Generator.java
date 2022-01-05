/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ten;

/**
 *
 * @author Coolo
 */
public class Generator {
    private Parser parser;
    private String output;
    public Generator(Parser parser) {
        this.parser = parser;
    }
    public void generate() {
        output = parser.getRootExpression().generate();
    }
    public String getOutput() {
        return output;
    }
}
