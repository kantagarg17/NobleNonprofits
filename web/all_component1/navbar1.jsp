<%-- 
    Document   : navbar1.jsp
    Created on : 14 Apr, 2021, 5:09:35 PM
    Author     : NAVODITA TANDON
--%>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
  <a class="navbar-brand" href="adminlogin.jsp"><i class="fa fa-handshake-o" aria-hidden="true"></i>NPO Connect</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="adminhome.jsp"><i class="fa fa-home" aria-hidden="true"></i>Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="NPO.jsp">NPO</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="VOL.jsp">Volunteer</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="NPOVOL.jsp">NPO-VOL</a>
      </li>
    </ul>
    <!--form href="Logout.jsp"  class="form-inline my-2 my-lg-0"-->
      <i class="fa fa-sign-out" aria-hidden="true"></i><a href="LogoutServlett" class="btn btn-light my-2 my-sm-0" type="submit" name="logout" value="logout">Logout</a>
    
  </div>
</nav>