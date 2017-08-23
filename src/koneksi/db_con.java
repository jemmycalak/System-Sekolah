/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Jemmy Calak
 */
public class db_con {
    private Connection conn = null;
    static String DB_URL , DB_USER , DB_PASS , dbname,host,port;
    boolean kon = false, db = false;
    public db_con() {
             host = "localhost";
             port = "3306";
            dbname = "db_ss";
            DB_USER = "root";
            DB_PASS = "";
            DB_URL = "jdbc:mysql://" + host + ":" + port + "/" + dbname;
        if (conn == null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
                kon = true;
            } catch (SQLException ex) {
                   JOptionPane.showMessageDialog(null, ex.getErrorCode() + ": "+ex.getMessage());
                   kon = false;
            } catch (ClassNotFoundException cne) {
                JOptionPane.showMessageDialog(null, "COM.MYSQL.JDBC.Driver tidak ditemukan");
                kon = false;
            }
        }
    }
    public Connection getCon() throws SQLException {
        return this.conn;
    }
 
    public boolean getKoneksi() {
        return kon;
    }
}
