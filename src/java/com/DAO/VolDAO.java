/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

/**
 *
 * @author KHUSHBOO R. BALANI
 */
import com.User.VolDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.Db.DBCOnnect;

/**
 *
 * @author KHUSHBOO R. BALANI
 */
public class VolDAO {

    private Connection conn;
    private String name;
    private String pwd;
    private String phno;
    private String add;
    private String city;
    private String qual;
    private String about;
    private String sec_ques;
    private String sec_ans;

    public VolDAO(Connection conn) {
        super();
        this.conn = conn;
    }

    /*   public VolDAO(){
    }*/

    public boolean addVol(VolDetails vd) {
        boolean f = false;

        String vol_name = vd.getVol_name();
        String email = vd.getEmail();
        String password = vd.getPassword();
        String phno = vd.getPhno();
        String add = vd.getAdd();
        String city = vd.getCity();
        String qual = vd.getQual();
        String about = vd.getAbout();
        String sec_ques=vd.getSec_ques();
        String sec_ans=vd.getSec_ans();
      

        // Connection conn = DBCOnnect.getConn();
        try {
            // Class.forName("org.apache.derby.jdbc.ClientDriver");
            //Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits", "noble", "noble");
            String query = "insert into Register values(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, vol_name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, phno);
            ps.setString(5, add);
            ps.setString(6, city);
            ps.setString(7, qual);
            ps.setString(8, about);
            ps.setString(9, sec_ques);
            ps.setString(10, sec_ans);
          

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return f;
        //   return "error";
    }

    public VolDetails LoginVol(VolDetails vd) {

        Connection conn = DBCOnnect.getConn();
        VolDetails vol = null;

        try {
           
            String query;
            query = "select * from Register where email=? and password=?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, vd.getEmail());
            ps.setString(2, vd.getPassword());
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                vol = new VolDetails();
                vol.setVol_name(rs.getString("Name"));
                vol.setEmail(rs.getString("Email"));
                vol.setPassword("Password");
                vol.setPhno(rs.getString("Contact"));
                vol.setAdd(rs.getString("Address"));
                vol.setCity(rs.getString("City"));
                vol.setQual(rs.getString("Qualification"));
                vol.setAbout(rs.getString("About"));
                vol.setSec_ques(rs.getString("Sec_Ques"));
                vol.setSec_ans(rs.getString("Sec_Ans"));
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return vol;
    }

    public boolean updateVol(VolDetails vd) {
    
        boolean f = false;
        try {
         
            String query = "update Register set name=?, address=?, city=?, qualification=?, about=?, contact=?, sec_ques=?, sec_ans=? where email=?";
            PreparedStatement p = conn.prepareStatement(query);
            p.setString(1, vd.getVol_name());
            // p.setString(2, emp.getPassword());
            p.setString(2, vd.getAdd());
            p.setString(3, vd.getCity());
            p.setString(4, vd.getQual());
            p.setString(5, vd.getAbout());
            p.setString(6, vd.getPhno());
            p.setString(7, vd.getEmail());
            p.setString(8, vd.getSec_ques());
            p.setString(9, vd.getSec_ans());

            p.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

 /*   public boolean ForgotPassVol(VolDetails vd) {
        boolean f = false;
       int check = 0;
        try {
            
            
          
            String query = "update Register set password=? where email=?";
            PreparedStatement ps = conn.prepareStatement(query);
             ps.setString(2, vd.getEmail());
            ps.setString(1, vd.getPassword());
           

            int i = ps.executeUpdate();
            if (i > 0) {
                f = true;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return f;
    }
*/
}
