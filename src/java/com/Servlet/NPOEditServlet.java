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
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KHUSHBOO R. BALANI
 */

public class NPOEditServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       
        String name = request.getParameter("npo_name");
        //String email = request.getParameter("emp_email");
        //String password = request.getParameter("emp_pass");
        String regno = request.getParameter("regno");
        String city = request.getParameter("npo_city");
        String address = request.getParameter("npo_add");
        String des = request.getParameter("npo_des");
        String website = request.getParameter("npo_web");
        String vol_work = request.getParameter("npo_vol_work");
        String phone = request.getParameter("npo_phone");
        
        //get the user from the session..
        HttpSession s = request.getSession();
        
        NPODetails nd = (NPODetails) s.getAttribute("NPOD");
        nd.setNpo_name(name);
        nd.setRegno(regno);
        nd.setCity(city);
        nd.setAdd(address);
        nd.setDes(des);
        nd.setWebsite(website);
        nd.setVol_work(vol_work);
        nd.setPhone(phone);
        //update database
        NPODAO dao = new NPODAO(DBCOnnect.getConn());
        boolean f = dao.updateNPO(nd);

        if (f) {

            response.sendRedirect("NPOProfile.jsp");

        } else {
            out.println("Could not update Profile!");
        }
        out.println("</body>");
        out.println("</html>");
    }
}
