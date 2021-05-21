<%-- 
    Document   : Register
    Created on : Apr 5, 2021, 2:24:04 AM
    Author     : KHUSHBOO R. BALANI
--%>
<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> NPO Register Page</title>
         <%@include file="all_component/allcss.jsp" %> 
    </head>
    <body>
         <%@include file="all_component/navbar.jsp" %> 
         <div class="container-fluid div-color">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-4"  style="margin-bottom: 12%">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-user-plus fa-4x" aria-hidden="true"></i>
                            <h4 style="font-weight: bold"> Registration </h4></div>
                            
                        
                        <%
                            String regMsg=(String)session.getAttribute("reg-success");
                            
                            if(regMsg!=null)
                            {%>
                            <div class="alert alert-success" role="alert"><%= regMsg %> For Login <a href="Login.jsp"> Click Here </a></div> 
                               
                                
                           <% 
                               session.removeAttribute("reg-success");
                           }
                        %>
                        
                        <%
                            String failMsg=(String)session.getAttribute("failed-msg");
                            
                            if(failMsg!=null)
                            {%>
                            <div class="alert alert-danger" role="alert"><%= failMsg %></div> 
                               
                                
                           <% 
                               session.removeAttribute("failed-msg");
                           
                                   }
                        %>
                        
                            <div class="card-body">
                                <form action="NPOServlet" method="post" enctype="multipart/form-data" id="register">
                                    <div class="form-group">
                                    <label>NPO Name</label>
                                    <input type="text" name="NPOname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter NPO Name" required>
                            
                                    </div>
                                    
                                    <div class="form-group">
                                    <label>City</label>
                                    <input type="text" name="City" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter City of NPO" required>
                                    </div>
                                    
                                    <div class="form-group">
                                    <label>Email Address</label>
                                    <input type="email" name="Email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email" required>
                                    
                                    </div>
                                    
                                    <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="Password" class="form-control" id="exampleInputPassword1" pattern=".{8,14}" placeholder="Enter Password " required title="8-14 characters">
                                     </div>
                                    
                                     
                                    <div class="form-group">
                                    <label>Unique Registration Number</label>
                                    <input name="regno" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Registration No. of the NPO provided by the Government" required>
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your registration number with anyone else.</small>
                                    </div>
                                    
                                    
                                    <div class="form-group">
                                    <label>Address</label>
                                    <textarea name="Address" class="form-control" id="exampleFormControlTextarea1" rows="4" placeholder="Enter Address of NPO" required></textarea>
                                   
                                    </div>
                                    
                                    <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="Des" class="form-control" id="exampleFormControlTextarea1" rows="4" placeholder="Enter Description about NPO" required></textarea>
                                   
                                    </div>
                                    
                                     <div class="form-group">
                                    <label>Website</label>
                                    <input type="text" name="Website" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Website of NPO" required>
                                    </div>
                                    
                                    <div class="form-group">
                                    <label>Volunteer Work</label>
                                    <textarea name="Vol_Work" class="form-control" id="exampleFormControlTextarea1" rows="4" placeholder="Enter Volunteer Work of NPO" required></textarea>
                                   
                                    </div>
                                   
                                    <div class="form-group">
                                    <label>Contact Number</label>
                                    <input type="tel" name="Phone" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" pattern="[0-9]{10}" placeholder="Enter Contact Number of NPO" maxlength="10" required  >
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

                                    
                                   
 
                                    <button type="submit" name="btnRegister" class="btn btn-primary badge-pill btn-block">Register</button>
                                </form>
                            </div>
                        
                    
                </div>
                </div>
         
       
    </body>
</html>
<%@include file="all_component/footer.jsp" %>




