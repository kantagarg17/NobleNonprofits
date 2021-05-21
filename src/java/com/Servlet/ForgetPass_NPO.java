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
public class ForgetPass_NPO extends HttpServlet {

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {

        
            String email = request.getParameter("email");
            String pass = request.getParameter("newpass");
            String cpass = request.getParameter("conpass");
         
            String sec_ques = request.getParameter("sec_ques");
            String sec_ans = request.getParameter("sec_ans");
               HttpSession session;
        
            int check = 0;

            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits", "noble", "noble");
            Statement st = con.createStatement();
           if(cpass.equals(pass)){
            ResultSet rs = st.executeQuery("select * from npo_register where email='"+email+"' and sec_ques='"+sec_ques+"' and sec_ans='"+sec_ans+"'");
          //  out.println("Hello 2 ");
            while (rs.next()) {
              //  out.println("Hello3 ");
                check = 1;
                st.executeUpdate("update npo_register set password='"+pass+"' where email='"+email+"'");
            //    response.sendRedirect("LoginVol.jsp");
              //    out.println("Done");
                session = request.getSession();
                session.setAttribute("pass-success-npo", "Password Updated Successfully !!");
                response.sendRedirect("ForgotPass_NPO.jsp");

            }
           }
            if (check == 0) {
                 session = request.getSession();
                session.setAttribute("failed-pass-npo", "Something went wrong. Try Again !!");
                response.sendRedirect("ForgotPass_NPO.jsp");
           
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
