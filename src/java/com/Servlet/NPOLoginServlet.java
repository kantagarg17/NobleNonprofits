/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Servlet;

import com.DAO.NPODAO;
import com.Db.DBCOnnect;
import com.User.NPODetails;
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
@WebServlet("/NPOLoginServlet")
public class NPOLoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String eid=request.getParameter("email");
        String pass=request.getParameter("password");
        
        NPODetails nd=new NPODetails();
        nd.setEmail(eid);
        nd.setPassword(pass);
        
        NPODAO dao=new NPODAO(DBCOnnect.getConn());
        NPODetails npo=dao.LoginNPO(nd);
        
        if(npo!=null){
            HttpSession session=request.getSession();
            session.setAttribute("NPOD", npo);
            response.sendRedirect("NPOProfile.jsp");
        }
        else{
            HttpSession session=request.getSession();
            session.setAttribute("login-failed", "Invalid Email or Password. Try Again !!");
            response.sendRedirect("Login.jsp");
            
        }
      
    }

    
}
