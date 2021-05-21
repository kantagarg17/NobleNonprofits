<%-- 
    Document   : navbar_admin
    Created on : Apr 20, 2021, 5:59:52 PM
    Author     : KHUSHBOO R. BALANI
--%>


<!DOCTYPE html>
<%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>
<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#"><i class="fa fa-handshake-o" aria-hidden="true"></i
    <img src="/docs/4.0/assets/brand/bootstrap-solid.svg" width="30" height="30" class="d-inline-block align-top" alt="">
   NobleNonprofits - NPO Connect
  </a>
    
</nav>
<nav class="navbar navbar-expand-lg navbar-light navbar-custom" style="background-color: #e0f7fa;">

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto" id="nav">
      <li class="nav-item active">
        <a class="nav-link" href="Home_Admin.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="About_Admin.jsp"><i class="fa fa-info-circle" aria-hidden="true"></i> About Us </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Contact_Admin.jsp"><i class="fa fa-address-book-o" aria-hidden="true"></i> Contact Us </a>
      </li>
     
    </ul>
       <!-- three dot menu -->
       <li class="nav-item dropdown">
        <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-bars" aria-hidden="true"></i>
          Go To
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a href="NPO.jsp" class="dropdown-item">NPO</a>
          <a href="VOL.jsp" class="dropdown-item">Volunteer</a>
          <a class="dropdown-item" href="NPOVOL.jsp">Applications for Volunteering</a>
        </div>
      </li>
       <li class="nav-item dropdown">
      <a class="nav-link" href="VolLogoutServlet" ><i class="fa fa-sign-out" aria-hidden="true"></i>
          Logout
      </a></li>
</nav>

    
      
