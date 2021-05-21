<%-- 
    Document   : AdminProfile
    Created on : Apr 20, 2021, 4:47:51 PM
    Author     : KHUSHBOO R. BALANI
--%>

<%@page import="com.Db.DBCOnnect"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <style type="text/css">
.text{
    font-style: italic;
    font-weight: bolder;
    padding-top: 200px;
    padding-left: 100px;
    font-size: 20px;
    font-family: sans-serif;
    position: absolute;
    width: 100%;
    height: 100%;
    margin-left: 25%;
    background: url(img/adminindexx.jpeg);
    background-repeat: no-repeat;
    
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Profile</title>
                          
       <%@include file="all_component/allcss.jsp" %> 
     
    </head>
    <body> 
        <%@include file="all_component/navbar_admin.jsp" %>
        <h2 style="text-align: center"> Admin Profile</h2>
               <div class="text"> 
               
              
               </div>
       
</body> 
</html>
<%@include file="all_component/footer.jsp" %>