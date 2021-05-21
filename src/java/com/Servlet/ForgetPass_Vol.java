/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KHUSHBOO R. BALANI
 */
//@MultipartConfig("/ForgetPass_Vol")
public class ForgetPass_Vol extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {

         
            String email = request.getParameter("email");
            String pass = request.getParameter("newpassword");
              String cpass = request.getParameter("conpassword");
          
            String sec_ques = request.getParameter("sec_ques");
            String sec_ans = request.getParameter("sec_ans");
               HttpSession session;
        
            int check = 0;

            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits", "noble", "noble");
            Statement st = con.createStatement();
           if(cpass.equals(pass)){
            ResultSet rs = st.executeQuery("select * from register where email='"+email+"' and sec_ques='"+sec_ques+"' and sec_ans='"+sec_ans+"' ");
         
            while (rs.next()) {
             
                check = 1;
                st.executeUpdate("update Register set password='"+pass+"' where email='"+email+"'");
            
                session = request.getSession();
                session.setAttribute("pass-success", "Password Updated Successfully !!");
                response.sendRedirect("ForgotPass_Vol.jsp");

            }
           }
            if (check == 0) {
                 session = request.getSession();
                session.setAttribute("failed-pass", "Something went wrong. Try Again !!");
                response.sendRedirect("ForgotPass_Vol.jsp");
           
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

}
