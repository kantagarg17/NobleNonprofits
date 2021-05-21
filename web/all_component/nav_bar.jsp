<%-- 
    Document   : nav_bar
    Created on : Apr 11, 2021, 11:19:25 PM
    Author     : KHUSHBOO R. BALANI
--%>

<%@page import="com.User.NPODetails"%>
<%@page import="com.User.VolDetails"%>
<%@page import="java.sql.*"%>


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
                <a class="nav-link" href="Home_NPO.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="About_NPO.jsp"><i class="fa fa-info-circle" aria-hidden="true"></i> About Us </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Contact_NPO.jsp"><i class="fa fa-address-book-o" aria-hidden="true"></i> Contact Us </a>
            </li>

        </ul>

        <%
            NPODetails npo = (NPODetails) session.getAttribute("NPOD");

            if (npo != null) {%>
        <li class="nav-item dropdown">
            <a class="nav-link" href="#" role="button" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-user" aria-hidden="true"></i>
                <%=npo.getNpo_name()%>
            </a></li>
        <li class="nav-item dropdown">
            <a class="nav-link" href="NPOLogoutServlet" ><i class="fa fa-sign-out" aria-hidden="true"></i>
                Logout
            </a></li>

        <!--profile modal-->


        <!-- Modal -->

        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">My Profile</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="container text-center">
                            <i class="fa fa-user fa-3x" aria-hidden="true"></i>
                            <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder"> <%=npo.getNpo_name()%> </h5>
                            <h6 class="modal-title" id="exampleModalLabel" style="font-weight: bold"> <%=npo.getEmail()%> </h6>

                            <!-- details -->
                            <br>
                            <div id="profile-details">
                                <table class="table">
                                    <tbody>
                                        </tr>
                                        <tr> 
                                            <th scope="row">Registration Number</th>
                                            <td> <%=npo.getRegno() %></td>
                                        </tr>

                                        </tr>
                                        <tr> 
                                            <th scope="row">City</th>
                                            <td> <%=npo.getCity()%></td>
                                        </tr>
                                        </tr>
                                        <tr>
                                            <th scope="row">Address</th>
                                            <td> <%= npo.getAdd()%></td>
                                        </tr>
                                        </tr>
                                        <tr>
                                            <th scope="row">Description</th>
                                            <td> <%=npo.getDes()%></td>
                                        </tr>
                                        </tr>
                                        <tr> 
                                            <th scope="row">Website</th>
                                            <td> <%=npo.getWebsite()%></td>
                                        </tr>
                                        </tr>
                                        <tr>
                                            <th scope="row">Volunteer Work</th>
                                            <td> <%=npo.getVol_work()%></td>
                                        </tr>
                                        </tr>
                                        <tr>
                                            <th scope="row">Contact Number</th>
                                            <td> <%=npo.getPhone()%></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <!-- application-->

                            <div class="table-responsive" id="profile-details2" style="display: none;">
                                <form>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Name</th>
                                                <th scope="col">Email</th>
                                                <th scope="col">Contact</th>
                                                <th scope="col">Qualification</th>
                                                <th scope="col">About</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            </tr>
                                            <%
                                                String n = npo.getEmail();
                                                try {

                                                    Class.forName("org.apache.derby.jdbc.ClientDriver");

                                                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits", "noble", "noble");

                                                    PreparedStatement st = con.prepareStatement("select register.name, Vol_Apply_NPO.volunteer, register.contact, register.qualification, register.about from register INNER JOIN Vol_Apply_NPO on register.email=Vol_Apply_NPO.volunteer where Vol_Apply_NPO.Nponame=?");

                                                    st.setString(1, n);

                                                    ResultSet rs = st.executeQuery();

                                                    ResultSetMetaData rsmd = rs.getMetaData();

                                                    while (rs.next()) {
                                            %>

                                            <tr>

                                                <td scope="row"></td>
                                                <td> <%= rs.getString(1)%> </td>
                                                <td> <%= rs.getString(2)%> </td>
                                                <td> <%= rs.getString(3)%> </td>
                                                <td> <%= rs.getString(4)%> </td>
                                                <td> <%= rs.getString(5)%> </td>

                                            </tr>
                                            <% }
                                                } catch (Exception ex) {

                                                    System.out.println(ex);

                                                }
                                            %>
                                        </tbody>
                                    </table>

                                </form>
                            </div>

                            <!-- profile edit -->

                            <div id="profile-edit" style="display: none;">


                                <form action="NPOEditServlet" method="post">
                                    <table class="table">

 
                                        <tr>
                                            <th>Name </th>
                                            <td> <input type="text" class="form-control" name="npo_name" value="<%= npo.getNpo_name()%>" > </td>
                                        </tr>


                                        <tr>
                                            <th>Registration Number</th>
                                            <td> <input type="text" class="form-control" name="regno" value="<%= npo.getRegno()%>" > </td>
                                        </tr>



                                        <!-- <tr>
                                             <td>Password </td>
                                             <td> <input type="password" class="form-control" name="emp_password" value="" > </td>
                                         </tr>-->
                                        <tr>
                                            <th>City </th>
                                            <td> <input type="text" class="form-control" name="npo_city" value="<%= npo.getCity()%>" > </td>

                                        </tr>

                                        <tr>
                                            <th>Address </th>
                                            <td> <input type="text" class="form-control" name="npo_add" value="<%= npo.getAdd()%>" > </td>

                                        </tr>

                                        <tr>
                                            <th>Description </th>
                                            <td> <input type="text" class="form-control" name="npo_des" value="<%= npo.getDes()%>" > </td>

                                        </tr>

                                        <tr>
                                            <th>Website</th>

                                            <td> <input type="text" class="form-control" name="npo_web" value="<%= npo.getWebsite()%>" > </td>

                                        </tr>

                                        <tr>
                                            <th>Volunteer Work </th>
                                            <td> <input type="text" class="form-control" name="npo_vol_work" value="<%= npo.getVol_work()%>" > </td>

                                        </tr>

                                        <tr>
                                            <th>Contact Number </th>
                                            <td> <input type="tel" class="form-control" name="npo_phone" value="<%= npo.getPhone()%>" > </td>

                                        </tr>

                                    </table>

                                    <div class="container">
                                        <button type="submit" class="btn btn-outline-primary" >Save</button>
                                    </div>

                                </form>  

                            </div>

                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button id="app-button" type="button" class="btn btn-outline-primary">Applications</button>
                        <button id="edit-profile-button" type="button" class="btn btn-primary">Edit</button>
                    </div>
                </div>
            </div>
        </div>







        <!--end of profile modal-->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {

                let editStatus = false;
                $('#edit-profile-button').click(function () {
                    // alert("button clicked")

                    if (editStatus == false)
                    {
                        $("#profile-details").hide()
                        $("#profile-edit").show();
                        editStatus = true;
                        $(this).text("Back")
                    } else
                    {
                        $("#profile-details").show()
                        $("#profile-edit").hide();
                        editStatus = false;
                        $(this).text("Edit")
                    }


                })

                let appStatus = false;
                $('#app-button').click(function () {

                    if (appStatus == false)
                    {
                        $("#profile-details").hide()
                        $("#profile-edit").hide();
                        $("#profile-details2").show();
                        appStatus = true;
                        $(this).text("Back")

                    } else
                    {
                        $("#profile-details").show()
                        $("#profile-details2").hide();
                        $("#profile-edit").hide();
                        appStatus = false;
                        $(this).text("Applications")
                    }
                })



            });

        </script>    

        <% } else {%>

        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-sign-in" aria-hidden="true"></i>
                Login
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a href="Login.jsp" class="dropdown-item" href="#">NPO</a>
                <a href="LoginVol.jsp" class="dropdown-item" href="#">Volunteer</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="index.jsp">Admin</a>
            </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-plus" aria-hidden="true"></i>
                Register
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a href="NPO_Email.jsp" class="dropdown-item" href="#">NPO</a>
                <a href="Vol_Email.jsp" class="dropdown-item" href="#">Volunteer</a>
            </div>
        </li>

        <% }
        %>

    </div>

</nav>
