<%-- 
    Document   : NPO
    Created on : Apr 16, 2021, 12:19:54 AM
    Author     : NAVODITA TANDON
--%>
<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.User.ADetails"%>
<%
  ADetails user1=(ADetails)session.getAttribute("userd");
  
  if(user1 == null)
  {
      response.sendRedirect("adminlogin.jsp");
      session.setAttribute("login-error","Please login :)");
  }
  
%>
<!DOCTYPE html>
<% 
          // try{
                          // Class.forName("org.apache.derby.jdbc.ClientDriver");
                          // Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits","noble","noble");
                          // Statement stmt=conn.createStatement();
                          // ResultSet rs=stmt.executeQuery("select Register.Name, Vol_Apply_NPO.Volunteer, Register.Contact, npo_register.npo_name, Vol_Apply_NPO.nponame, npo_register.phone from npo_register INNER JOIN Vol_Apply_NPO on npo_register.email=Vol_Apply_NPO.nponame INNER JOIN Register on Register.Email=Vol_Apply_NPO.Volunteer");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script type="text/javascript">
            window.history.go(1);
         </script>
        <title>NPO</title>
        <%@include file="all_component/allcss.jsp" %> 
    </head>
    <body>
           <%@include file="all_component/navbar_admin.jsp"%>
           
        <div class="container-fluid p-0">
     
        <h1 style="font-weight: bold" class="text-center textt-custom">Applications for NPOs</h1>
<%
                //while(rs.next())
                { 
%>
           
        <div class="container bg-custom" style="margin-bottom: 4%">
        <div class="row">
            <div class="col-md-12 " style="margin-bottom: 2%">
                <div class="card mt-3 custom-card card:hover">
                    
                     <img alt="" src="img/NPOVOL.jpeg" class="card-img-top mt-2 mx-auto"
                         style="max-width: 100px;">
                     <div class="container text-center">
                     <div class="card-body p-4">
                         
                         
                         
                                
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Volunteer Name</th>
                                            <th scope="col">Volunteer Email</th>
                                            <th scope="col">Volunteer Contact</th>
                                            <th scope="col">Applied For</th>
                                            <th scope="col">NPO Email</th>
                                            <th scope="col">NPO Contact</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        </tr>
                                        <%
                                            //String n=vol.getEmail();
                                            try {

                                                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                                                    Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits", "noble", "noble");
                                                    Statement stmt = conn.createStatement();
                                                    ResultSet rs = stmt.executeQuery("select Register.Name, Vol_Apply_NPO.Volunteer, Register.Contact, npo_register.name, Vol_Apply_NPO.nponame, npo_register.phone from npo_register INNER JOIN Vol_Apply_NPO on npo_register.email=Vol_Apply_NPO.nponame INNER JOIN Register on Register.Email=Vol_Apply_NPO.Volunteer");
                                        
                                                    //st.setString(1, n);

                                                    //ResultSet rs = st.executeQuery();

                                                    //ResultSetMetaData rsmd = rs.getMetaData();

                                                    while (rs.next()) {
                                        %>
                                        <tr>
                                            
                                            <td scope="row"></td>
                                            <td> <%= rs.getString(1) %> </td>
                                            <td> <%= rs.getString(2) %> </td>
                                            <td> <%= rs.getString(3) %> </td>
                                            <td> <%= rs.getString(4) %> </td>
                                            <td> <%= rs.getString(5) %> </td>
                                            <td> <%= rs.getString(6) %> </td>
                                          
                                        </tr>
                                        <% } 
                                                 } catch (Exception ex) {

                                                     System.out.println(ex);

                                                    }
                                            %>
                                        
                                    </tbody>
                                </table>
                                            
                             
                <!--        
                <p>
                <b class="text-success">VOL NAME</b></br><b class="text-primary"></b>
                </p>
               
                <p>
                    <b class="text-success">VOL EMAIL</b></br><b class="text-primary"></b>
                </p>
                
                <p>
                <b class="text-success">VOL CONTACT</b></br><b class="text-primary"></b>
                </p>
                
                <p>
                <b class="text-success">NPO NAME</b></br><b class="text-primary"></b>
                </p>
                
                <p>
                <b class="text-success">NPO EMAIL</b></br><b class="text-primary"></b>
                </p>
                
                <p>
                <b class="text-success">NPO CONTACT</b></br><b class="text-primary">   </b>
                </p>
  -->
               </div>
            </div>
            </div>
        </div>
        </div>
        </div>
    </body>
</html>

<%}
//}catch(Exception ex){ex.printStackTrace();}

%>

        <%@include file="all_component/footer.jsp" %>