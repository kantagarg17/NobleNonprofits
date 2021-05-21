<%-- 
    Document   : Search_Admin
    Created on : Apr 20, 2021, 11:35:02 PM
    Author     : KHUSHBOO R. BALANI
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
        <%@include file="all_component/allcss.jsp" %> 
       
    </head>
    <body style="background-image: radial-gradient(circle, #54d4d4, #21afc3, #008aad, #006691, #104370);">
        <%@include file="all_component/navbar_admin.jsp" %>
        <h4 style="color: black; font-weight: bolder; text-align: center; margin-top: 50px; font-size: 30px"> LIST OF NPOs </h4>
         <center>
             <table class="table table-custom">
                 <thead class="thead-dark" style="font-size: 20px">
                <tr>
                <th scope="col">#</th>
                <th scope="col">NPO Name</th>
                <th scope="col">City</th>
                <th scope="col">Address</th>
                <th scope="col">Description</th>
                <th scope="col">Website</th>
                <th scope="col">Volunteer Work</th>
                <th scope="col">Contact Number</th>
                </tr>
                </thead>
                   
                    
            
            <%
                try{
                    //database connection
                    Class.forName("org.apache.derby.jdbc.ClientDriver");    //driver for MySQL
                    Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits","noble","noble");
                    Statement stmt=conn.createStatement();
                    
                    String cityname=request.getParameter("txtSearch"); 
                    String str="select * from NPO_Register where City='"+cityname+"'";
                    ResultSet rs=stmt.executeQuery(str); 
                    
                    while(rs.next()){
                        %>
                        
                       <tr>
                             <td scope="row"></td>
                            <td><%=rs.getString("name")%> </td>
                            <td><%=rs.getString("city")%> </td>
                            <td><%=rs.getString("address") %></td>
                            <td><%=rs.getString("description")%> </td>
                            <td><%=rs.getString("wesite")%> </td>
                            <td><%=rs.getString("vol_work")%> </td>
                             <td><%=rs.getString("phone")%> </td>
                            
                            
                        </tr>
                    <% }
                    
                    

                    
                }catch(Exception ex){
                     System.out.println(ex.getMessage());
                    };
            %>
        </table>
    </center>
       
        
    </body>
</html>
<%@include file="all_component/footer.jsp" %>
