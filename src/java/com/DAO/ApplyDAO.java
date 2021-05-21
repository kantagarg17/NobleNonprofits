/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.User.ApplyVol;
import com.User.VolDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author KHUSHBOO R. BALANI
 */
public class ApplyDAO {
    
    private Connection conn;

    public ApplyDAO(Connection conn) {
        super();
        this.conn = conn;
    }
    
    public boolean AppyVol(String e, String n)
    {   
        boolean f=false;
        
        try{
            
            String query="insert into Vol_Apply_NPO values(?,?)";
           PreparedStatement ps=conn.prepareStatement(query);
           ps.setString(1,e);
           ps.setString(2,n);
           
           int i=ps.executeUpdate();
           
           if(i==1){
               
               f=true;
               
           }
            
        }catch(Exception ex){ex.printStackTrace();}
        
        return f;
        
    }
    
    
}
