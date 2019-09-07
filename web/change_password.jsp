<%-- 
    Document   : feedback
    Created on : 30 Mar, 2017, 7:42:22 PM
    Author     : Akshay
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Change Password</title>
<link rel="stylesheet" href="css/bootstrap.css">

</head>
<body>
    <%@ include file="header.jsp" %>
    <%
        userid = (String)session.getAttribute("user_name");
            if(userid==null)
            {
                out.println("<script type=\"text/javascript\">");
             out.println("alert('You need to login to access');");
             out.println("location='login.jsp';");
             out.println("</script>");
            }
        %>
           <div class="well"> </div>
<div class="container">
  <div class="row">
    <div class="col-lg-offset-3 col-xs-12 col-lg-6">
      <div class="jumbotron">
        <div class="row text-center">
          <div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2>Change Password</h2>
          </div>
          <div class="text-center col-lg-12"> 
            <form role="form" action="change_password" class="text-center">
              <div class="form-group" align="left">
                <label for="o_pass">Old Password</label>
                <input type="password" class="form-control" id="o_pass" pattern=".{6,}"   required title="6 characters minimum" name="o_pass" placeholder="Old Password" required></div>
                
                <div class="form-group" align="left">
                <label for="n_pass" >New Password</label>
                 <input class="form-control" id="password" name="password" type="password" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 6 characters' : ''); if(this.checkValidity()) form.password_two.pattern = this.value;" placeholder="New Password" required>
                </div>
              <div class="form-group" align="left">
                <label for="Confirm_Password">Confirm Password</label>
                <input class="form-control" id="password_two" name="password_two" type="password" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the same Password as above' : '');" placeholder="Confirm Password" required> </div>
              <button type="submit" id="Feedback_Submit" class="btn btn-primary btn-lg" style=" margin-top: 10px;" >Change</button>
              <button type="reset" id="Feedback_clr" class="btn btn-primary btn-lg" style=" margin-top: 10px;">Cancel</button>
            </form>
            
            <!-- END CONTACT FORM --> 
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
    <%@ include file="footer.jsp" %>
</html>