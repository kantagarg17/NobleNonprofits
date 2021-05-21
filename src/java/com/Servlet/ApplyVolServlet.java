/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Servlet;

import com.DAO.ApplyDAO;
import com.Db.DBCOnnect;
import java.io.IOException;
import java.sql.*;
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
@WebServlet("/ApplyVolServlet")
public class ApplyVolServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String applyemail = request.getParameter("email");
        String npoapply = request.getParameter("npoapply");

        String nemail = "";
        try {

            Class.forName("org.apache.derby.jdbc.ClientDriver");

            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits", "noble", "noble");

            PreparedStatement st = con.prepareStatement("select Email from NPO_Register where email=?");

            st.setString(1, npoapply);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                nemail = rs.getString(1);
            }

        } catch (Exception ex) {

            System.out.println(ex);

        }

        ApplyDAO dao = new ApplyDAO(DBCOnnect.getConn());
        boolean f = dao.AppyVol(applyemail, nemail);

        HttpSession session;

        if (f) {
            session = request.getSession();
            session.setAttribute("apply-msg", "Applied Successfully !!");
            response.sendRedirect("VolProfile.jsp");
        } else {
            session = request.getSession();
            session.setAttribute("error-apply", "Invalid Details. Try Again !!");
            response.sendRedirect("ApplyVol.jsp");

        }

    }

}
