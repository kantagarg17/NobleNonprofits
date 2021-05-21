<%-- 
    Document   : About_NPO
    Created on : Apr 20, 2021, 11:24:22 PM
    Author     : KHUSHBOO R. BALANI
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
.text-about{
    align-content: center;
    font-style: italic;
    padding-top: 60px;
    padding-left: 100px;
    padding-right: 100px;
    font-size: 20px;
    color: wheat;
    font-family: sans-serif;
    position: absolute;
    width: 100%;
    height: 100%;
    background: url(img/hands1.png);
    
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us Page</title>
          <%@include file="all_component/allcss.jsp" %>
          
        
    </head>
    <body>
        <%@include file="all_component/nav_bar.jsp" %> 
     
        <div class="text-about text-center">
                <h5 style="font-size: 23px"> Noble Nonprofits an online web application system which is a hub for credible Nonprofit
Organizations. It minimizes the burden of searching for
organizations individually on internet and also helping the donors to find organizations in
a particular city. It is in turn beneficial not only for the volunteers or donors, but also for the
NPOs and other social organizations thereby maintaining all the records.
Overall it is an essential tool for the smooth functioning of the NPOs and a
great assistance for its users.</h5>
            
            <iframe width="852" height="480" src="https://www.youtube.com/embed/AuBNNnNwAS0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </body>
</html>
<%@include file="all_component/footer.jsp" %>
