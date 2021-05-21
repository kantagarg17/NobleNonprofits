<%-- 
    Document   : ApplyVol
    Created on : Apr 12, 2021, 1:34:52 AM
    Author     : KHUSHBOO R. BALANI
--%>

<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    VolDetails vol1 = (VolDetails) session.getAttribute("volD");

    if (vol1 == null) {
        response.sendRedirect("LoginVol.jsp");
        session.setAttribute("Login-error", "Please Login.");
    }

%>





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
                            <h4 style="font-weight: bold"> Apply for Volunteership </h4></div>

                        <%                                  String ErrorMsg = (String) session.getAttribute("error-apply");
                            if (ErrorMsg != null) {%>
                        <div class="alert alert-danger" role="alert"><%=ErrorMsg%></div> 
                        <%
                                session.removeAttribute("error-apply");
                            }

                        %>


                        <div class="card-body">
                            <form action="ApplyVolServlet" method="post">

                                <div class="form-group">

                                    <%                                VolDetails vs = (VolDetails) session.getAttribute("volD");

                                        if (vs != null) {%>
                                    <input type="hidden" value="<%=vs.getEmail()%>" name="applyemail">
                                    <% }
                                    %>


                                    <label>Email Address</label>
                                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email">

                                </div>
                                <div class="form-group">
                                    <label>NPO Name</label>
                                 
                                   <select name="npoapply" class="form-control" required>
                                        <option value="-1">Select NPO Name you want to apply for</option>
                                        <%
                                            try {

                                                Class.forName("org.apache.derby.jdbc.ClientDriver");
                                                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits", "noble", "noble");
                                                Statement st = con.createStatement();
                                                ResultSet r = st.executeQuery("select * from npo_register");
                                                while (r.next()) {
                                        %>
                                        <option value ="<%=r.getString("email")%>"><%=r.getString("name")%></option>
                                        <%
                                             }

                                            } catch (Exception ex) {

                                               System.out.println(ex);

                                            }


                                        %>


                                    </select>
                                   
                                </div>

                                <button type="submit" name="btnLogin" class="btn btn-primary badge-pill btn-block">Apply</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>




    </body>
</html>
<%@include file="all_component/footer.jsp" %>
