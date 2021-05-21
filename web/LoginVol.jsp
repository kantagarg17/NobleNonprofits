<%-- 
    Document   : LoginVol
    Created on : Apr 11, 2021, 11:56:39 AM
    Author     : KHUSHBOO R. BALANI
--%>

<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Volunteer Login Page</title>
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
                         
                     

                        <%                            String invalidMsg = (String) session.getAttribute("login-failed");
                            if (invalidMsg != null) {%>
                        <div class="alert alert-danger" role="alert"><%= invalidMsg%></div> 
                        <%
                                session.removeAttribute("login-failed");
                            }

                        %>

                        <%                             String withoutVolLogin = (String) session.getAttribute("Login-error");
                            if (withoutVolLogin != null) {%>
                        <div class="alert alert-danger" role="alert"><%=withoutVolLogin%></div> 
                        <%
                                session.removeAttribute("Login-error");
                            }

                        %>


                        <%                             String lgMsg = (String) session.getAttribute("logoutMsg");
                            if (lgMsg != null) {%>
                        <div class="alert alert-success" role="alert"><%=lgMsg%></div> 
                        <%
                                session.removeAttribute("logoutMsg");
                            }

                        %>



                        <div class="card-body">
                            <form action="VolLoginServlet" method="post">

                                <div class="form-group">
                                    <label>Email Address</label>
                                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email">

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Password">
                                </div>

                                <button type="submit" name="btnLogin" class="btn btn-primary badge-pill btn-block">Login</button>
                            </form>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="RegisterVol.jsp">New around here? Register</a>
                            <a class="dropdown-item" href="ForgotPass_Vol.jsp">Forgot password?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       




    </body>
</html>
<%@include file="all_component/footer.jsp" %>
