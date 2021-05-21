<%-- 
    Document   : Contact_Admin
    Created on : Apr 20, 2021, 11:26:59 PM
    Author     : KHUSHBOO R. BALANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
.text-contact{
    align-content: center;
    font-weight: bolder;
    font-style: normal;
    padding-top: 200px;
    padding-left: 100px;
    padding-right: 100px;
    font-size: 30px;
   
    font-family: sans-serif;
    position: absolute;
    width: 100%;
    height: 100%;
    background: url(img/circlegreen.png);
    background-position: center;
    background-color: #104370;
    background-repeat: no-repeat;
    
}
</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
          <%@include file="all_component/allcss.jsp" %>
       
    </head>
    <body>
        <%@include file="all_component/navbar_admin.jsp" %> 
     
        <div class="text-contact text-center">
            <i class="fa fa-handshake-o fa-2x" aria-hidden="true" style="color: black"></i>
                <h3 style="color: black; font-weight: bolder; font-size: 38px; font-family: serif;"> Noble Nonprofits - NPO Connect</h3>
                <br>
                <h5 style="font-size: 20px"> Kanta Garg </h5>
                <h5 style="font-size: 20px"> Khushboo Balani</h5>
                <h5 style="font-size: 20px"> Khushi Jain</h5>
                <h5 style="font-size: 20px"> Navodita Tandon </h5>
                <br>
                <h5 style="color: green"><i class="fa fa-whatsapp" aria-hidden="true"></i> 9924853884</h5>
                <h5 style="color: black"><i class="fa fa-envelope" aria-hidden="true"></i> noblenonprofits@gmail.com</h5>
                <h5 style="color: red"><i class="fa fa-youtube-play" aria-hidden="true"></i> Noble Nonprofits</h5>
                
        </div>  
                
       
    </body>
</html>
<%@include file="all_component/footer.jsp" %>
