/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package system.sekolah;

import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * 
 */
public class SystemSekolah {

    /**
     * @param args the command line arguments
     */
    SystemSekolah(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            DriverManager.getConnection("jdbc:mysql://localhost:3306/db_ss","root","");
            FormUtama a=new FormUtama();
            a.setVisible(true);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Connection Error "+e.getMessage());
        }
    
    }
    
    public static void main(String[] args) {
        // TODO code application logic here
        SystemSekolah SystemSekolah = new SystemSekolah();
    }
    
}
