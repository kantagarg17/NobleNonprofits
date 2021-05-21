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
import com.DAO.VolDAO;
import com.Db.DBCOnnect;
import com.User.VolDetails;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/VolServlet")
public class VolServlet extends HttpServlet {

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
       
            String vol_name = request.getParameter("emp_name");
            String email = request.getParameter("emp_email");
            String password = request.getParameter("password");
            String phno = request.getParameter("emp_contact");
            String add = request.getParameter("emp_add");
            String city = request.getParameter("emp_city");
            String qual = request.getParameter("emp_qual");
            String about = request.getParameter("emp_about");
            String sec_ques = request.getParameter("sec_ques");
            String sec_ans = request.getParameter("sec_ans");

            VolDetails vd = new VolDetails();
            vd.setVol_name(vol_name);
            vd.setEmail(email);
            vd.setPassword(password);
            vd.setPhno(phno);
            vd.setAdd(add);
            vd.setCity(city);
            vd.setQual(qual);
            vd.setAbout(about);
            vd.setSec_ques(sec_ques);
            vd.setSec_ans(sec_ans);

            VolDAO dao = new VolDAO(DBCOnnect.getConn());
            boolean f = dao.addVol(vd);

            HttpSession session;

            if (f) {

                session = request.getSession();
                session.setAttribute("reg-success", "Registration Successfull !!");
                response.sendRedirect("RegisterVol.jsp");
            
            } else {

                session = request.getSession();
                session.setAttribute("failed-msg", "Something went wrong. Try Again !!");
                response.sendRedirect("RegisterVol.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
