#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package};


import org.lotus.carp.generator.core.CodeGenerator;

/**
 *  gen main
 *
 * @author: Foy Lian
 * Date: 9/6/2018
 * Time: 4:19 PM
 */
public class CodeGeneratorMain {
    public static void main(String[] args) {
        new CodeGenerator().renderCode();
    }
}