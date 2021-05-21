<%-- 
    Document   : NPO_Email
    Created on : May 4, 2021, 2:21:34 PM
    Author     : KHUSHBOO R. BALANI
--%>

<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> NPO Register Page</title>
         <%@include file="all_component/allcss.jsp" %> 
   
    </head>
    <body>
         <%@include file="all_component/navbar.jsp" %> 
         <div class="container-fluid div-color">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-4"  style="margin-bottom: 12%">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-user-plus fa-4x" aria-hidden="true"></i>
                            <h4 style="font-weight: bold"> Registration </h4></div>
                            
                              <div class="card-body">
                                <form action="NPOVerify" method="post" >
                                    
                                    <div class="form-group">
                                    <label>Email Address</label>
                                    <input type="email" name="npoemail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email" required>
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                   
                                <button type="submit" class="btn btn-primary badge-pill btn-block">Next</button>
                               
                                 </form>
                            </div>
                    </div>
                </div>
             </div>
         </div>
    </body>
</html>
<%@include file="all_component/footer.jsp" %>