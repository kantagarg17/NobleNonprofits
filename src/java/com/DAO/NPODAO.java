/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.User.NPODetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author KHUSHBOO R. BALANI
 */
public class NPODAO {

    private Connection conn;
    private String eid;
    private String pwd;
    private String regno;
    private String add;
    private String des;
    private String website;
    private String vol_work;
    private String certi;
    private String phone;
    private String sec_ques;
    private String sec_ans;

    public NPODAO(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean addNPO(NPODetails nd) {
        boolean f = false;

        try {
            String query = "insert into NPO_Register values(?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, nd.getNpo_name());
            ps.setString(2, nd.getCity());
            ps.setString(3, nd.getEmail());
            ps.setString(4, nd.getPassword());
            ps.setString(5, nd.getAdd());
            ps.setString(6, nd.getDes());
            ps.setString(7, nd.getWebsite());
            ps.setString(8, nd.getVol_work());
            ps.setString(9, nd.getRegno());
            ps.setString(10, nd.getPhone());
            ps.setString(11, nd.getSec_ques());
            ps.setString(12, nd.getSec_ans());

            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return f;
    }

    public NPODetails LoginNPO(NPODetails nd) {

        NPODetails npo = null;

        try {
            String query;
            query = "select * from NPO_Register where email=? and password=?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, nd.getEmail());
            ps.setString(2, nd.getPassword());
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                npo = new NPODetails();
                npo.setNpo_name(rs.getString("Name"));
                npo.setCity(rs.getString("City"));
                npo.setEmail(rs.getString("Email"));
                npo.setPassword("Password");
                npo.setAdd(rs.getString("Address"));
                npo.setDes(rs.getString("Description"));
                npo.setWebsite(rs.getString("Wesite"));
                npo.setVol_work(rs.getString("Vol_Work"));
                npo.setRegno(rs.getString("Certificate"));
                npo.setPhone(rs.getString("Phone"));
                npo.setSec_ques(rs.getString("Sec_Ques"));
                npo.setSec_ans(rs.getString("Sec_Ans"));
                
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return npo;
    }

    public boolean updateNPO(NPODetails nd) {
        boolean f = false;
        try {

            String query = "update NPO_REGISTER set name=?, certificate=?,city=?, address=?, description=?, wesite=?, vol_work=?, phone=? where email=?";
            PreparedStatement p = conn.prepareStatement(query);
            p.setString(1, nd.getNpo_name());
            // p.setString(2, emp.getPassword());
            p.setString(2,nd.getRegno());
            p.setString(3, nd.getCity());
            p.setString(4, nd.getAdd());
            p.setString(5, nd.getDes());
            p.setString(6, nd.getWebsite());
            p.setString(7, nd.getVol_work());
            p.setString(8, nd.getPhone());
            p.setString(9, nd.getEmail());
            

            p.executeUpdate();
            
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }


}
