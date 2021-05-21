import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.User.ADetails;

import java.sql.*;

@WebServlet("/LogoutServlett")
public class LogoutServlett extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try
        { 
            HttpSession session = request.getSession();
            session.removeAttribute("userd");
            HttpSession session2 =request.getSession();
            
            session.setAttribute("logoutMsg","Logout Successfully.");
            
            response.sendRedirect("adminlogin.jsp");
            
        
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    

}
