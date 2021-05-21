<%-- 
    Document   : navbar
    Created on : 13 Apr, 2021, 8:56:49 PM
    Author     : NAVODITA TANDON
--%>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
  <a class="navbar-brand" href="Home.jsp"><i class="fa fa-handshake-o" aria-hidden="true"></i>NPO Connect</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i>Home <span class="sr-only">(current)</span></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <a class="btn btn-light my-2 my-sm-0 mr-2" href="adminlogin.jsp" type="submit"><i class="fa fa-user-circle" aria-hidden="true"></i>Login</a>
    </form>
  </div>
</nav>