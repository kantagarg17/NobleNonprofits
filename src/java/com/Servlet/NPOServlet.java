/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Servlet;

/**
 *
 * @author KHUSHBOO R. BALANI
 */
import com.DAO.NPODAO;
import com.Db.DBCOnnect;
import com.User.NPODetails;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/NPOServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)

public class NPOServlet extends HttpServlet {

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  response.setContentType("text/html;charset=UTF-8");
       try(PrintWriter out = response.getWriter()){
   
        String name = request.getParameter("NPOname");
        String city = request.getParameter("City");
        String email_id = request.getParameter("Email");
        String pass = request.getParameter("Password");
        String reg = request.getParameter("regno");
        String add = request.getParameter("Address");
        String des = request.getParameter("Des");
        String website = request.getParameter("Website");
        String vol_work = request.getParameter("Vol_Work");
        String phone = request.getParameter("Phone");
        String sec_ques = request.getParameter("sec_ques");
        String sec_ans = request.getParameter("sec_ans");

        NPODetails nd = new NPODetails();
        nd.setNpo_name(name);
        nd.setCity(city);
        nd.setEmail(email_id);
        nd.setPassword(pass);
        nd.setRegno(reg);
        nd.setAdd(add); 
        nd.setDes(des);
        nd.setWebsite(website);
        nd.setVol_work(vol_work);
        nd.setPhone(phone);
        nd.setSec_ques(sec_ques);
        nd.setSec_ans(sec_ans);

        NPODAO dao = new NPODAO(DBCOnnect.getConn());
        boolean f = dao.addNPO(nd);
        HttpSession session;

        if (f) {
            session = request.getSession();
            session.setAttribute("reg-success", "Registration Succesfull !!");
            response.sendRedirect("Register.jsp");

        } else {
            session = request.getSession();
            session.setAttribute("failed-msg", "Something went wrong. Try Again !!");
            response.sendRedirect("Register.jsp");

        }

    
} 
}
}