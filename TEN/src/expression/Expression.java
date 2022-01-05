/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package expression;
import java.util.*;

/**
 *
 * @author Coolo
 */
public abstract class Expression {
    public static int Label = 0;
    public static int currentBreakLabel = -1;
    public Expression() {}

    public abstract String generate();
}
