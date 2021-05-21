<%-- 
    Document   : index.jsp
    Created on : 14 Apr, 2021, 9:29:37 AM
    Author     : NAVODITA TANDON
--%>

<%@page import="com.User.ADetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager,java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            .back-img
            {
                background: url("img/adminbook.jpeg");
                width: 100%;
                height: 88%;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }
         </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <%@include file="all_component1/allcss.jsp" %> 
    </head>
    <body>
        <%@include file="all_component1/navbar.jsp" %>
        
        
        <div class="container-fluid back-img">
        <div class="text-center text-custom">
            <br>
            <h1 class="text-custom"><i class="fa fa-handshake-o" aria-hidden="true"></i>Welcome Admin of NPO-CONNECT</h1>
            <a class="btn btn-light my-2 my-sm-0 mr-2" href="adminlogin.jsp" type="submit" name="submit"><i class="fa fa-user-circle fa-spin" aria-hidden="true"></i>Login</a>
        </div>
        </div>
    </body>
</html>
<%@include file="all_component1/footer.jsp" %>
<%
ADetails us = new ADetails();
        us.setEmail("navoditatandon23@gmail.com");
        us.setPassword("ntdsq");
        %>