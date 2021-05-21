<%-- 
    Document   : adminhome.jsp
    Created on : Apr 20, 2021, 11:20:52 AM
    Author     : NAVODITA TANDON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page import="com.User.ADetails"%>

<%
  ADetails user1=(ADetails)session.getAttribute("userd");
  
  if(user1 == null)
  {
      response.sendRedirect("login.jsp");
      session.setAttribute("login-error","Please login)");
  }
  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            .back-img
            {
                
               
                background-color:  #26c6da;
                height: 88%;
                background-position: center;
                background-repeat: no-repeat;
                
            }
         </style>
      
        <title>JSP Page</title>
        <%@include file="all_component1/allcss.jsp" %> 
    </head>
    <body>
        <%@include file="all_component1/navbar1.jsp" %>
        <form>
        <div class="container-fluid p-0">
            <div class="card py-5 back-img">
                <div class="card-body text-center">
                    <img alt="" src="img/adminindexx.jpeg" class="img-fluid mx-auto" style="max-width: 2000px; height:65%">
                    <h1>Admin of NPO-CONNECT</h1>
                    <a href="NPO.jsp" class="btn btn-outline-primary badge-pill">NPO</a>
                    <a href="VOL.jsp" class="btn btn-outline-primary badge-pill">VOLUNTEER</a>
                    <a href="NPOVOL.jsp" class="btn btn-outline-primary badge-pill">NPO-VOL</a>
                </div>
            </div>
        </div>
        </form>
       
       
    </body>
</html>
 <%@include file="all_component/footer.jsp" %>