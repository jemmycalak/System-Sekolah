/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package system.sekolah;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @
 */
public class help6 extends javax.swing.JPanel {

    /**
     * Creates new form guru
     */
    public help6() {
        initComponents();
      
    }
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        background41 = new design.background4();
        jLabel1 = new javax.swing.JLabel();
        button1 = new design.button();
        jLabel2 = new javax.swing.JLabel();

        setMinimumSize(new java.awt.Dimension(657, 501));
        setPreferredSize(new java.awt.Dimension(785, 550));
        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel1.setText("Tombol Administrasi di gunakan untuk meinput semua Administrasi Siswa");

        button1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/administrasi.png"))); // NOI18N

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel2.setText(" yang ada di sekolah");

        javax.swing.GroupLayout background41Layout = new javax.swing.GroupLayout(background41);
        background41.setLayout(background41Layout);
        background41Layout.setHorizontalGroup(
            background41Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(background41Layout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addGroup(background41Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2)
                    .addComponent(button1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1))
                .addContainerGap(32, Short.MAX_VALUE))
        );
        background41Layout.setVerticalGroup(
            background41Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(background41Layout.createSequentialGroup()
                .addGap(49, 49, 49)
                .addComponent(button1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel2)
                .addContainerGap(184, Short.MAX_VALUE))
        );

        add(background41, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 510, 330));
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private design.background4 background41;
    private design.button button1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    // End of variables declaration//GEN-END:variables
}
