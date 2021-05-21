<%-- 
    Document   : ForgotEmail_Vol
    Created on : May 4, 2021, 7:37:46 PM
    Author     : KHUSHBOO R. BALANI
--%>

<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NPO Password Change</title>
        <%@include file="all_component/allcss.jsp" %> 

    </head>
    <body>
        <%@include file="all_component/nav_bar.jsp" %>

        <div class="container-fluid div-color">
            <div class="row">
                <div class="col-md-4 offset-md-4"> 
                    <div class="card mt-4" style="margin-bottom: 14%">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-user-circle-o fa-4x" aria-hidden="true"></i>
                            <h4 style="font-weight: bold"> Change Password </h4></div>


                        <%      String PassMsg = (String) session.getAttribute("pass-success-npo");

                            if (PassMsg != null) {%>
                        <div class="alert alert-success" role="alert"><%= PassMsg%> For Login <a href="Login.jsp"> Click Here </a></div> 


                        <%
                                session.removeAttribute("pass-success-npo");
                            }
                        %>

                        <%
                            String failMsg = (String) session.getAttribute("failed-pass-npo");

                            if (failMsg != null) {%>
                        <div class="alert alert-danger" role="alert"><%= failMsg%></div> 


                        <%
                                session.removeAttribute("failed-pass-npo");

                            }
                        %>


                        <div class="card-body">
                            <form action="ForgetPass_NPO" method="post">

                                <div class="form-group">
                                    <label>Email Address</label>
                                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email" required="">

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
                                                ResultSet r = st.executeQuery("select * from Security_Ques");
                                                while (r.next()) {
                                        %>
                                        <option value ="<%=r.getInt("ID") %>"><%=r.getString("Question")%></option>
                                        <%
                                             }

                                            } catch (Exception ex) {

                                               System.out.println(ex);

                                            }


                                        %>


                                    </select>
                                         
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your security question with anyone else.</small>
                                    </div>
                                    
                                      <div class="form-group">
                                    <label>Security Answer</label>
                                   
                                    <input type="text" name="sec_ans" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your Security Answer" required> 
                                     
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your security answer with anyone else.</small>
                                    </div>
                                 
                                <div class="form-group">
                                    <label for="exampleInputPassword1"> New Password</label>
                                    <input type="password" name="newpass" class="form-control" id="exampleInputPassword1" placeholder="Enter Password" required="">
                                </div>


                                <div class="form-group">
                                    <label for="exampleInputPassword1"> Confirm Password</label>
                                    <input type="password" name="conpass" class="form-control" id="exampleInputPassword1" placeholder="Enter Password">
                                </div>

                                <button type="submit" name="btnSub" class="btn btn-primary badge-pill btn-block"> Submit </button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>




    </body>
</html>
<%@include file="all_component/footer.jsp" %>

