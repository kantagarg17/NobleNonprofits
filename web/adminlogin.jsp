<%-- 
    Document   : adminlogin.jsp
    Created on : Apr 20, 2021, 11:29:53 AM
    Author     : NAVODITA TANDON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager,java.sql.*"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <%@include file="all_component/allcss.jsp" %> 
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
       <div class="container-fluid div-color">
            <div class="row">
                <div class="col-md-4 offset-md-4"> 
                    <div class="card mt-4">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-user-circle-o fa-4x" aria-hidden="true"></i>
                            <h4 style="font-weight: bold"> Login </h4></div>
                        
                        <%
                            String invalidMsg = (String) session.getAttribute("login-failed");
                            if(invalidMsg != null){
                        %>
                        <div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
                        <%
                            session.removeAttribute("login-failed");
                            }
                        %>
                      
                        
                        <%
                            String logoutt = (String) session.getAttribute("logoutMsg");
                            if(logoutt != null){
                        %>
                       
                        <div class="alert alert-success" role="alert"><%=logoutt%></div>
                       
                        <%
                            session.removeAttribute("logoutMsg");
                            }
                        %>
                        
                        <%
                            String invalidMsgg = (String) session.getAttribute("login-error");
                            if(invalidMsgg != null){
                                
                        %>
                        <div class="alert alert-danger" role="alert"><%=invalidMsgg%></div>
                        <%
                            session.removeAttribute("login-error");
                            }
                        %>
                        
                        <div class="card-body">
                            <form action="AServlett" method="post">
                            <div class="form-group">
                            <label>Email Address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="aemail" placeholder="Enter Email">                       
                            </div>
  
                            <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="apassword" placeholder="Enter Password">
                            </div>
  
                            <button type="submit" class="btn btn-primary badge-pill btn-block" name="submit">Login</button>
                            </form>
                        </div>   
                    </div>
                </div> 
            </div>
        </div>
    </body>
</html>
<%@include file="all_component/footer.jsp" %>

