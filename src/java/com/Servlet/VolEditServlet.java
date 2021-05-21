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
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KHUSHBOO R. BALANI
 */
public class VolEditServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("emp_name");
        //String email = request.getParameter("emp_email");
        //String password = request.getParameter("emp_pass");
        String address = request.getParameter("emp_add");
        String city = request.getParameter("emp_city");
        String qual = request.getParameter("emp_qual");
        String about = request.getParameter("emp_about");
        String contact = request.getParameter("emp_contact");

        //get the user from the session..
        HttpSession s = request.getSession();
        VolDetails vd = (VolDetails) s.getAttribute("volD");
        // VolDetails vd=new VolDetails();
        vd.setVol_name(name);
        //emp.setEmail(emailid);
        //emp.setPassword(pass);
        vd.setAdd(address);
        vd.setCity(city);
        vd.setQual(qual);
        vd.setAbout(about);
        vd.setPhno(contact);
        //update database
        VolDAO dao = new VolDAO(DBCOnnect.getConn());
        boolean f = dao.updateVol(vd);

        if (f) {

            response.sendRedirect("VolProfile.jsp");

        } else {
            out.println("Could not update Profile!");
        }
        out.println("</body>");
        out.println("</html>");
    }
}
