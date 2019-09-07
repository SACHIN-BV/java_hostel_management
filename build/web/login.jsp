<%-- 
    Document   : login
    Created on : 31 Mar, 2017, 12:22:40 PM
    Author     : Akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<%@ include file="header.jsp" %>
 <div class="well"> </div>
<div class="container">
  <div class="row">
    <div class="col-lg-offset-3 col-xs-12 col-lg-6">
      <div class="jumbotron">
        <div class="row text-center">
          <div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2>Admin Login</h2>
          </div>
          <div class="text-center col-lg-12"> 
            
            <form role="form" action="login" id="feedbackForm" class="text-center">
              <div class="form-group" align="left">
                <label for="name">User Name</label>
                <input type="text" class="form-control" id="user_name"  name="user_name" placeholder="User Name" required></div>
                <div class="form-group" align="left">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                </div>
              <button type="submit" id="Application_Submit" class="btn btn-primary btn-lg" style=" margin-top: 10px;" >Login</button>
              <button type="reset" id="Application_clr" class="btn btn-primary btn-lg" style=" margin-top: 10px;">Cancel</button>
            </form>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</div>       
<%@ include file="footer.jsp" %>
</html>
