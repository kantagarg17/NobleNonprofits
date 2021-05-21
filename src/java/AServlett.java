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

/**
 *
 * @author NAVODITA TANDON
 */
@WebServlet("/AServlett")
public class AServlett extends HttpServlet {
    public static boolean val=false;
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException{
        try{
        
        Connection  conn=null;
        if(request.getParameter("submit")!=null)
        {
        PrintWriter out = response.getWriter();
        
        
        String email = request.getParameter("aemail");
        String password = request.getParameter("apassword");
        
        ADetails us = new ADetails();
        us.setEmail(email);
        us.setPassword(password);
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String query="select * from ADMIN where EMAIL='"+email+"'and PASSWORD='"+password+"'";
        conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits","noble","noble");
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery(query);
        boolean status=rs.next();
        out.print(status);
      
        if(status)
        {
            HttpSession session = request.getSession();
            session.setAttribute("userd",us);
            //HttpSession session = request.getSession();
            //session.setAttribute("connectn",conn);
            response.sendRedirect("AdminProfile.jsp");
        }
        else
        {  
            HttpSession session = request.getSession();
            session.setAttribute("login-failed","Invalid Email or Password. Try Again !!");
            response.sendRedirect("adminlogin.jsp");
        }
        }
       
   
        }catch(Exception ex){ex.printStackTrace();}
    }

}

