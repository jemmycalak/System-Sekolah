/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package design;

import java.awt.Color;
import java.awt.Font;

/**
 *
 * 
 */
public class buttonBig extends usu.widget.glass.ButtonImageReflection {
    public buttonBig(){
    super();
    setFont(getFont().deriveFont(Font.BOLD));
    setForeground(Color.BLACK);
   
    }
}
