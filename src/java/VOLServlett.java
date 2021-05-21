import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/VOLServlett")
public class VOLServlett extends HttpServlet {

    protected void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException{
        try{
            
        if(request.getParameter("edit")!=null)
        {
        
        String email = request.getParameter("volemail");
        String contact= request.getParameter("volcontact");
        String address= request.getParameter("voladdress");
        String city= request.getParameter("volcity");
        String qualification = request.getParameter("volqual");
        String about= request.getParameter("volabout");
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits","noble","noble");
        
        
        PreparedStatement update = conn.prepareStatement
    ("UPDATE REGISTER SET CONTACT = ?, ADDRESS = ?, CITY = ?, QUALIFICATION = ?, ABOUT=? WHERE EMAIL='"+email+"'");

    update.setString(1,contact);
    update.setString(2,address);
    update.setString(3,city);
    update.setString(4,qualification);
    update.setString(5,about);
    
    update.executeUpdate();
    response.sendRedirect("AdminProfile.jsp");
        }
  }catch(Exception ex){ex.printStackTrace();}  
        
    }
}