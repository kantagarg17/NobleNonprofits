<%-- 
    Document   : NPO
    Created on : Apr 16, 2021, 12:19:54 AM
    Author     : NAVODITA TANDON
--%>
<%@page import="com.User.ADetails"%>
<%
    ADetails user1 = (ADetails) session.getAttribute("userd");

    if (user1 == null) {
        response.sendRedirect("adminlogin.jsp");
        session.setAttribute("login-error", "Please login.");
    }

%>
<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%    try {
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits", "noble", "noble");
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from NPO_REGISTER");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>NPO</title>
        <%@include file="all_component/allcss.jsp" %> 
    </head>
    <body>
        <%@include file="all_component/navbar_admin.jsp"%>
        <div class="container-fluid p-0">


            <h1 style="font-weight: bold" class="text-center textt-custom">NPO - DETAILS</h1>
            <%    while (rs.next()) {
            %>

            <div class="container bg-custom" style="margin-bottom: 4%">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card mt-3 custom-card" style="margin-bottom: 2%">

                            <img alt="" src="img/NPO.jpeg" class="card-img-top mt-2 mx-auto"
                                 style="max-width: 100px;">
                            <div class="card-body p-4">
                                <p>
                                    <b class="text-success">NPO NAME</b></br><b class="text-primary"><%=rs.getString(1)%></b>
                                </p>

                                <p>
                                    <b class="text-success">CITY</b></br><b class="text-primary"><%=rs.getString(2)%></b>
                                </p>

                                <p>
                                    <b class="text-success">EMAIL ADDRESS</b></br><b class="text-primary"><%=rs.getString(3)%></b>
                                </p>

                                <p>
                                    <b class="text-success">ADDRESS</b></br><b class="text-primary"><%=rs.getString(5)%></b>
                                </p>

                                <p>
                                    <b class="text-success">DESCRIPTION</b></br><b class="text-primary"><%=rs.getString(6)%></b>
                                </p>

                                <p>
                                    <b class="text-success">WEBSITE</b></br><b class="text-primary"><%=rs.getString(7)%></b>
                                </p>

                                <p>
                                    <b class="text-success">VOLUNTEER WORK</b></br><b class="text-primary"><%=rs.getString(8)%></b>
                                </p>

                                <p>
                                    <b class="text-success">CONTACT NUMBER</b></br><b class="text-primary"><%=rs.getString(10)%></b>
                                </p>

                                <div class="container text-center mt-2">
                                    <a href="NPOeditt.jsp?note_name=<%=rs.getString(1)%>" type="submit" class="btn btn-primary">EDIT</a>
                                    <a href="NPODelete.jsp?note_namee=<%=rs.getString(3)%>" name="delete" value="delete" type="submit" class="btn btn-danger">DELETE</a>
                                </div> 
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>

<%}
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>
<%@include file="all_component/footer.jsp" %>
