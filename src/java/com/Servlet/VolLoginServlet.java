/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Servlet;

import com.DAO.VolDAO;
import com.Db.DBCOnnect;
import com.User.VolDetails;
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
@WebServlet("/VolLoginServlet")
public class VolLoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String eid=request.getParameter("email");
        String pass=request.getParameter("password");
        
        VolDetails vd=new VolDetails();
        vd.setEmail(eid);
        vd.setPassword(pass);
        
        VolDAO dao=new VolDAO(DBCOnnect.getConn());
        VolDetails vol=dao.LoginVol(vd);
        
        
        if(vol!=null){
            HttpSession session=request.getSession();
            session.setAttribute("volD", vol);
            response.sendRedirect("VolProfile.jsp");
        }
        else{
            HttpSession session=request.getSession();
            session.setAttribute("login-failed", "Invalid Email or Password. Try Again !!");
            response.sendRedirect("LoginVol.jsp");
            
        }
      
    }

    
}
