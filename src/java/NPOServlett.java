import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


@WebServlet("/NPOServlett")
public class NPOServlett extends HttpServlet {

    protected void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException{
        try{
            
        if(request.getParameter("edit")!=null)
        {
        
        String name = request.getParameter("nponame");
        String city = request.getParameter("npocity");
        String add = request.getParameter("npoadd");
        String des = request.getParameter("npodes");
        String npovolwork = request.getParameter("npovolwork");
        
        //String about= request.getParameter("npoabout");
        //String requirements = request.getParameter("nporeq");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits","noble","noble");
        
        
        PreparedStatement update = conn.prepareStatement
    ("UPDATE NPO_REGISTER SET CITY = ?, ADDRESS=?, DESCRIPTION=?, VOL_WORK=?  WHERE NAME='"+name+"'");

    update.setString(1,city);
    update.setString(2, add);
    update.setString(3, des);
    update.setString(4, npovolwork);
    update.executeUpdate();
    response.sendRedirect("AdminProfile.jsp");
        }
  }catch(Exception ex){ex.printStackTrace();}  
        
    }
}