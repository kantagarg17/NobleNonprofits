<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
     try{
            String namee=request.getParameter("note_namee");
            Class.forName("org.apache.derby.jdbc.ClientDriver");  //register the driver
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits","noble","noble");  //create the connection object
            Statement stmt=conn.createStatement();
            String query1="delete from VOL_APPLY_NPO where NPONAME='"+namee+"'";
            String query="delete from NPO_REGISTER where EMAIL='"+namee+"'";
            int j=stmt.executeUpdate(query1);
            int i=stmt.executeUpdate(query);
            if(i>0)
            {
            response.sendRedirect("AdminProfile.jsp");
            }
            else
            {
            out.print("<script>alert('Error in deleting record.')</script>");
            }
        
       }catch(Exception ex){ex.printStackTrace();} 
 

%>
