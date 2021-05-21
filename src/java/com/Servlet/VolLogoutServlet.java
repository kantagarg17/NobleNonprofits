/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KHUSHBOO R. BALANI
 */
@WebServlet("/VolLogoutServlet")
public class VolLogoutServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
            
            HttpSession session=request.getSession();
            session.removeAttribute("volD");
        
            
            HttpSession session2=request.getSession();
            session.setAttribute("logoutMsg", "Logout Successfully !!");
            response.sendRedirect("LoginVol.jsp");
            
        }catch(Exception ex){ex.printStackTrace();}
      
    }

   

}