/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ten;

import expression.*;
import extra.*;
import java.util.*;
/**
 *
 * @author Coolo
 */
public class Parser {
    public static Operator[] operators = {
                new Operator("+","add",5),
                new Operator("-","minus",5),
                new Operator("*","mul",10),
                new Operator("/","div",10),
                new Operator("==","equal",2),
                new Operator("<=","lessequ",2),
                new Operator(">=","greatequ",2),
                new Operator("!=","unqual",2)
            };
    public static String[] keyWords = {
        "if",
        "else",
        "loop",
        "class",
        "return",
        "break",
        "implements"
    };
    
    private LinkedList<String> tokens;
    private ListIterator<String> iterator;
    private String currentToken;
    private ExpressionRoot root;
    private int currentLine = 1;
    private LinkedList<String> parameters;
    private boolean isError = false;
    
    public Parser(Analyser analyse) {
        tokens = analyse.getToken();
        root=new ExpressionRoot();
        parameters = new LinkedList<String>();

    }
    public boolean parse() {
        iterator = tokens.listIterator();
        //match("\n");
        getNext();
        while (getCurrent().equals("\n") ) match("\n");
        while (getCurrent() != null && !getCurrent().equals("__EOF__")) {
            
            Expression expr = command();
            if (expr != null)
                root.addChild( expr );
            else
                error("Cannot be invoked");
            while (getCurrent().equals("\n") ) match("\n");
        }
        return isError;
    }
    /**
     * parst einen block
     */
    public ExpressionScope block() {
        ExpressionRoot expr = root;
        root = new ExpressionRoot();
        while (getCurrent().equals("\n")) getNext();
        match("scopebegin");
        match("\n");
        while (!getCurrent().equals("scopeend")) {
            Expression tmpExpr = command();
            if (tmpExpr != null)
                root.addChild( tmpExpr );
            else
                error("Cannot be invoked");

           // if (!getCurrent().equals("scopeend")) match("\n");
           // while (getCurrent().equals("\n")) getNext();
        }
        match("scopeend");
        match("\n");
        ExpressionRoot retExpr = root;
        root = expr;
        return new ExpressionScope(retExpr.getChildren());
    }
    
    public Expression command() {
        Expression expr = keyWord();
        if (expr != null)
            return expr;
        expr = calcExpression();
        if (expr instanceof ExpressionIdentifier) {
            if (!(expr instanceof ExpressionAssignment)) {
                ExpressionIdentifier tmp = ((ExpressionIdentifier)expr);
                while (tmp.getRight() != null) {
                    tmp = tmp.getRight();
                }
                if (!tmp.hasParameter()) error("identifier is not a function.");
            }
            expr = new ExpressionPop(expr);
        }
        match("\n");
        return expr;
    }
    public Expression calcExpression() {
        if (getCurrent().equals("\n")) return new ExpressionEmpty();
        return identifier( null );
    }
    
    public Expression operator(int prio) {
        if (prio > Operator.maxPrio) {
            Expression expr;
            expr = keyWord();
            if (expr != null) return expr;

            expr = factor();
            if (expr != null) return expr;

            expr = identifier(null);
            if (expr != null) return expr;

            error("Unknown token "+getCurrent());
        } else {
            boolean found = false;
            Expression expr1, retExpr;
            expr1=operator(prio + 1);
            retExpr = expr1;
            do {
                found = false;
                Expression expr2;
                
                for (Operator op: operators) {
                    if (op.getPrio() == prio && op.getName().equals(getCurrent())) {
                        getNext();
                        expr2 = operator(prio + 1);
                        found = true;
                        retExpr = new ExpressionOperator(op, retExpr, expr2);
                    }
                }
            } while (found);
            return retExpr;
        }
        return null;
    }
    /**
     * Behandelt die Schlüsselwörter
     * @return
     */
    public Expression keyWord() {
        if (getCurrent().equals("if")) {
            match("if");
            Expression expr = operator(0);
            if (expr == null) error("Expecting expression.");
            match("\n");
            ExpressionScope block = block();
            expr = new ExpressionIf(expr, block);
            if (block == null) error("Expecting block.");
            if (getCurrent().equals("else")) {
                match("else");
                boolean hasElse =true;
                Expression oldExpr = expr;
                if (getCurrent().equals("if")) {
                    hasElse = false;
                    match("if");
                    Expression mathExpr = operator(0);
                    if (mathExpr == null) error("Expecting expression.");
                    match("\n");
                    block = block();
                   
                    expr = new ExpressionIf(mathExpr, block);
                    new ExpressionElse((ExpressionIf)oldExpr,expr);
                    Expression tmpExpr = keyWord();
                    if (tmpExpr != null)
                        new ExpressionElse((ExpressionIf)expr, tmpExpr);
                    
                }
                if (getCurrent().equals("else") && !hasElse) {
                    hasElse = true;
                    match("else");
                }
                if (hasElse) {
                    match("\n");
                    block = block();
                    if (block == null) error("Expecting block.");
                    new ExpressionElse((ExpressionIf)expr, block);
                }

                expr = oldExpr;
            }
            return expr;
        } else if (getCurrent().equals("func")) {
            /*
            getNext();
            if (!getCurrent().equals("(") && !getCurrent().equals(".")) {


            }
            getBefore();
            getBefore();
            getNext();*/
        } else if (getCurrent().equals("return")) {
            match("return");
            return new ExpressionReturn(operator(0));
        } else if (getCurrent().equals("loop")) {
            match("loop");
            Expression mathExpr = operator(0);
            if (getCurrent().equals(",")) { //for
                match(",");
                if (mathExpr instanceof ExpressionAssignment) {
                    Expression toExpr = operator(0);
                    match(",");
                    Expression stepExpr = operator(0);
                    match("\n");
                    Expression block = block();
                    
                    return new ExpressionFor((ExpressionAssignment)mathExpr, toExpr,stepExpr, block);
                } else error("Expecting assignment.");
            } else { //while
                match("\n");
                Expression block = block();

                return new ExpressionWhile(mathExpr, block);
            }
        } else if (getCurrent().equals("class")) {

        } else if (getCurrent().equals("break")) {
            match("break");
            return new ExpressionBreak();
        } else if (getCurrent().equals("scopebegin")) {
            return block();
        } else if (getCurrent().equals("scopeend")) {
            match("scopeend");
        }
        return null;
    }

    /**
     * Behandelt Zugriffe auf Identifiers
     */
    public ExpressionIdentifier identifier(ExpressionIdentifier left) {
        String current = getCurrent();
        if (!current.equals("(") && !current.equals(".") && !current.equals("[")) getNext();
        Expression name = new ExpressionIdentifierName(current);
        ExpressionIdentifier expr;
        ExpressionParameter exprParam = null;
        ExpressionIdentifier right = null;
        if (getCurrent().equals("[")) {
            this.currentToken = ".";
            left = identifier(left);
            match("]");
        }

        boolean first;
        first = (left == null);
        
        if (getCurrent().equals("(")) {
            //funktionsaufruf
            exprParam = new ExpressionParameter();
            match("(");
            do {
                if (getCurrent().equals(",")) getNext();
                if (!getCurrent().equals(")"))
                    exprParam.addParameter(operator(0));

            } while(getCurrent().equals(","));
            match(")");
        }
        boolean isFirstTmp = first;
        if (first && !current.equals("__local") && !current.equals("__parameter")&& !current.equals("func")) isFirstTmp = false;
        expr = null;
        try {
            expr = new ExpressionIdentifier(name, exprParam, isFirstTmp);
        } catch(Exception ex) {
            System.err.println("Exception: "+ex.toString());
            ex.printStackTrace();
            System.exit(0);
        }
        
        boolean isParameter = false;
        

        
        if (getCurrent().equals(".")) {
            getNext();
            
            right = identifier(expr);
        }
        expr.setRight(right);
        if (first && !isFirstTmp) {
            //schauen ob local/parameter
            if (current.equals("self")) {
                isParameter = true;
            } else {
                for (String str: parameters) {
                    if (str.equals(current)) {
                        isParameter = true;
                    }
                }
            }
            ExpressionIdentifier newExpr = null;
            try {
            if (isParameter) {
                newExpr = new ExpressionIdentifier(new ExpressionIdentifierName("__parameter"), null, true);
            } else {
                newExpr = new ExpressionIdentifier(new ExpressionIdentifierName("__local"), null, true);
            }
            } catch(Exception ex) {}
            if (newExpr != null) {
                
                newExpr.setRight(expr);
                expr = newExpr;
            }
        }
        if (getCurrent().equals("(")) {
            if (expr.getRight() != null) {
                expr.getRight().setRight(identifier(expr.getRight()));
            } else {
                expr.setRight(identifier(expr));
            }

        }
        
        if (getCurrent().equals("=") && first) {
            //zuweisung
            match("=");
            if (getCurrent().equals("\n")) error("Expecting value");
            Expression value = operator(0);
            expr = new ExpressionAssignment(expr, value);
        }

        return expr;
    }
    /**
     * Behandelt die konstanten Werte (int, string, ...)
     * @return
     */
    public Expression factor() {
        try {
            Expression expr = new ExpressionInt(Integer.parseInt(getCurrent()));
            getNext();
            return expr;
        } catch(Exception ex) {}
        try {
            Expression expr = new ExpressionFloat(Float.parseFloat(getCurrent()));
            getNext();
            return expr;
        } catch(Exception ex) {}
        try {
            Expression expr = new ExpressionString(getCurrent());
            getNext();
            return expr;
        } catch(Exception ex) {}
        if (getCurrent().equals("(")) {
            match("(");
            Expression expr = operator(0);
            match(")");
            return expr;
        } else if (getCurrent().equals("func")) {
            getNext();
            if (getCurrent().equals("(")) {
                //function
                LinkedList<String> tmpParam = parameters;
                parameters = new LinkedList<String>();
                match("(");
                LinkedList<String> params = new LinkedList<String>();
                while (!getCurrent().equals(")") && !(getCurrent()==null)) {
                    params.add(getCurrent());
                    parameters.add(getCurrent());
                    getNext();
                    if (!getCurrent().equals(",")) {
                        break;
                    } else {
                        match(",");
                    }
                }
                match(")");
                Expression block = block();
                getBefore();
                getBefore();
                parameters = tmpParam;
                return new ExpressionFunc(block, params);
            } else{
                getBefore();
                getBefore();
                getNext();
            }
        } else if (getCurrent().equals("{")) {
            //create new identifier
            ExpressionNewIdentifier newExprIdent = new ExpressionNewIdentifier();
            match("{");
            while (getCurrent().equals("scopeend") || getCurrent().equals("\n") || getCurrent().equals("scopebegin") || getCurrent().equals(",")) getNext();
            while (!getCurrent().equals("}")) {
                Expression ident = new ExpressionIdentifierName(getCurrent());
                boolean array;
                if (getCurrent().equals("[")) {
                    match("[");
                    ident = operator(0);
                    match("]");
                    array = true;
                } else
                    array = false;
                
                if (getCurrent().equals("implements")) {
                    match("implements");
                    newExprIdent.registerImplement(new ExpressionImplements(identifier(null)));
                } else {
                    if (!array) getNext();
                    Expression value = new ExpressionInt(0);
                    if (getCurrent().equals("=")) {
                        match("=");
                        value = operator(0);
                    }
                    newExprIdent.register(ident, value);
                }
                while (getCurrent().equals("scopeend") || getCurrent().equals("\n") || getCurrent().equals("scopebegin") || getCurrent().equals(",")) getNext();
            }
            match("}");
            
            return newExprIdent;

        }
        return null;
    }

    public String getCurrent() {
        if (currentToken != null)
            if (currentToken.equals("\nopt"))
                return "\n";
            else
                return currentToken;
        else
            return "";
    }
    public String getNext() {
        if (iterator.hasNext()) {
            currentToken = iterator.next();
            if (currentToken.equals("\n")) currentLine++;
            return getCurrent();
        } else {
            currentToken = "__EOF__";
            return getCurrent();
        }
    }
    public String getBefore() {
        if (iterator.hasPrevious()) {
            currentToken = iterator.previous();
            if (currentToken.equals("\n")) currentLine--;
            return getCurrent();
        } else {
            currentToken = "__EOF__";
            return getCurrent();
        }
    }
    public ExpressionRoot getRootExpression() {
        return root;
    }
    public void error(String err) {
        error(err, currentLine, getCurrent());
    }
    public void error(String err, int line, String token) {
        String tmpToken = token;
        if (token.equals("\n")) tmpToken="NEWLINE";
        System.err.println("ERROR: "+err+" in line '"+line+"' and at token '"+tmpToken+"'");
        isError = true;
    }
    public boolean match(String text) {
        if (getCurrent().equals(text)) {
            getNext();
            return true;
        } else
            error("Unexpected token, expecting '"+text+"'");
        return false;
    }
}
