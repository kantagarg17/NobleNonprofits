
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    try {
        String Name = request.getParameter("note_name");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits", "noble", "noble");
        Statement stmt = conn.createStatement();
        ResultSet rs1 = stmt.executeQuery("select * from NPO_REGISTER where NAME='" + Name + "'");

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>edit page</title>
        <%@include file="all_component/allcss.jsp" %> 

    </head>
    <body>
        <%@include file="all_component/navbar_admin.jsp" %>
        <div class="container-fluid div-color">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-4">
                        <div class="card-header text-center text-white bg-custom">

                            <h4>NPO edit</h4>
                        </div>   
                        <%                while (rs1.next()) {
                        %>      

                        <div class="card-body">
                            <form action="NPOServlett" method="post">

                                <div class="form-group">
                                    <input type="hidden" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="nponame" value="<%=rs1.getString(1)%>">                       
                                </div>
                                    <h5 style="text-align: center"><%= rs1.getString(1) %> </h5>   
                                <div class="form-group">
                                    <label for="exampleInputPassword1">City</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="npocity" value="<%=rs1.getString(2)%>">
                                </div>
                               
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Address</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="npoadd" value="<%=rs1.getString(5)%>">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputPassword1">Description</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="npodes" value="<%=rs1.getString(6)%>">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputPassword1">Volunteer Work</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="npovolwork" value="<%=rs1.getString(8)%>">
                                </div>

                                <button type="submit" class="btn btn-primary badge-pill btn-block" name="edit" value="edit">EDIT</button>
                            </form>
                        </div>   
                    </div>
                </div> 
            </div>
        </div>
    </body>
</html>
<%@include file="all_component/footer.jsp" %>
<%}
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
