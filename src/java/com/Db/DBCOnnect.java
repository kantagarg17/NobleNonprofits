/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Db;

/**
 *
 * @author KHUSHBOO R. BALANI
 */
import java.sql.Connection;
import java.sql.DriverManager;
public class DBCOnnect {
    private static Connection conn;
    public static Connection getConn(){
        try{
        if(conn==null)
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits","noble","noble");
        }
        }catch(Exception ex){ex.printStackTrace();}
        
        return conn;
    }
    
}
