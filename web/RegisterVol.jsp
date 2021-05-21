<%-- 
    Document   : RegisterVol
    Created on : Apr 11, 2021, 11:56:25 AM
    Author     : KHUSHBOO R. BALANI
--%>

<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Volunteer Register Page</title>
        <%@include file="all_component/allcss.jsp" %> 


    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %> 
        <div class="container-fluid div-color">
            <div class="row">
                <div class="col-md-4 offset-md-4" style="margin-bottom: 4%">
                    <div class="card mt-4">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-user-plus fa-4x" aria-hidden="true"></i>
                            <h4 style="font-weight: bold"> Registration </h4></div>


                        <%                            String regMsg = (String) session.getAttribute("reg-success");

                            if (regMsg != null) {%>
                        <div class="alert alert-success" role="alert"><%= regMsg%> For Login <a href="LoginVol.jsp"> Click Here </a></div> 


                        <%
                                session.removeAttribute("reg-success");
                            }
                        %>

                        <%
                            String failMsg = (String) session.getAttribute("failed-msg");

                            if (failMsg != null) {%>
                        <div class="alert alert-danger" role="alert"><%= failMsg%></div> 


                        <%
                                session.removeAttribute("failed-msg");

                            }
                        %>




                        <div class="card-body">

                            <form action="VolServlet" method="post" id="empregform">
                                <div class="form-group">
                                    <label>Volunteer Name</label>

                                    <input type="text" name="emp_name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Volunteer Name" required> 

                                </div>


                                <div class="form-group">
                                    <label>Email Address</label>

                                    <input type="email" name="emp_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email" required>

                                </div>

                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="password" class="form-control" id="exampleInputPassword1" pattern=".{8,14}" placeholder="Enter Password " required title="8-14 characters">
                                </div>

                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1">Address</label>
                                    <textarea name="emp_add" class="form-control" id="exampleFormControlTextarea1" rows="4" placeholder="Enter Address" required></textarea>
                                </div>

                                <div class="form-group">
                                    <label>City</label>
                                    <input type="text" name="emp_city"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter City">

                                </div>

                                <div class="form-group">
                                    <label>Volunteer Qualification</label>
                                    <input type="text" name="emp_qual" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter last qualification" required>

                                </div>

                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1">About Yourself</label>
                                    <textarea name="emp_about" class="form-control" id="exampleFormControlTextarea1" rows="4" placeholder="Enter About Yourself" required></textarea>
                                </div>

                                <div class="form-group">
                                    <label>Contact Number</label>
                                    <input name="emp_contact" type="tel"  class="form-control" aria-describedby="emailHelp" pattern="[0-9]{10}" placeholder="Enter Contact Number" maxlength="10" required >

                                </div>

                                <div class="form-group">
                                    <label>Security Question </label>

                                    <select name="sec_ques" class="form-control" required>
                                        <option value="-1">Select your Security Question</option>
                                        <%
                                            try {

                                                Class.forName("org.apache.derby.jdbc.ClientDriver");
                                                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits", "noble", "noble");
                                                Statement st = con.createStatement();
                                                ResultSet rr = st.executeQuery("select * from Security_Ques");
                                                while (rr.next()) {
                                        %>
                                        <option value ="<%=rr.getInt("ID")%>"><%=rr.getString("Question")%></option>
                                        <%
                                                }

                                            } catch (Exception ex) {

                                                System.out.println(ex);

                                            }


                                        %>


                                    </select>

                                    <small id="emailHelp" class="form-text text-muted">Please enter it carefully as it is not editable later.</small>
                                </div>

                                <div class="form-group">
                                    <label>Security Answer</label>

                                    <input type="text" name="sec_ans" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your Security Answer" required> 

                                    <small id="emailHelp" class="form-text text-muted">Please enter it carefully as it is not editable later.</small>
                                </div>


                                <button id="sumbimt-btn" type="submit" name="btnRegister" class="btn btn-primary badge-pill btn-block">Register</button>
                            </form>
                        </div>


                    </div>
                </div>

                </body>

                </html>
                <%@include file="all_component/footer.jsp" %>

