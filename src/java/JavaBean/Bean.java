/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaBean;

import javax.inject.Named;
import javax.enterprise.context.Dependent;

/**
 *
 * @author eerv1
 */
@Named(value = "bean")
@Dependent
public class Bean {

    /**
     * Creates a new instance of Bean
     */
    public Bean() {
    }
    
}
