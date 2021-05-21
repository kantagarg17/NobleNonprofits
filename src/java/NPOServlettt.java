import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class NPOServlettt extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try{
            PrintWriter out = response.getWriter();
        if(request.getParameter("delete")!=null)
        {
            String uname=request.getParameter("note_namee");
            String query="delete from NPO where NAME='"+uname+"'";
            Class.forName("org.apache.derby.jdbc.ClientDriver");  //register the driver
             Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits","noble","noble");
            Statement stmt=conn.createStatement();
            int i=stmt.executeUpdate(query);
            if(i>0)
            {
            response.sendRedirect("AdminProfile.jsp");
            }
            else
            {
            out.print("<script>alert('Error in deleting record.')</script>");
            }
        }
       }catch(Exception ex){ex.printStackTrace();} 
    }
}
