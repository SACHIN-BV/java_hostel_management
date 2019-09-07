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
<title>Feedback</title>
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
            <h2>Feedback</h2>
          </div>
          <div class="text-center col-lg-12"> 
            <!-- CONTACT FORM https://github.com/jonmbake/bootstrap3-contact-form -->
            <form role="form" action="feedback" id="feedbackForm" class="text-center">
              <div class="form-group" align="left">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" pattern="^[a-z A-Z]*$" name="name" placeholder="Name" required></div>
                
                <div class="form-group" align="left">
                <label for="mobile" >Mobile Number</label>
                <input type="text" class="form-control" id="mobile" maxlength="10" pattern=\d{10}|\d{13} name="mobile" placeholder="Mobile Number" required>
                </div>
              <div class="form-group" align="left">
                <label for="email">E-Mail</label>
                <input type="email" class="form-control" id="email" name="email" pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" placeholder="Email Address" required>
                </div>
              <div class="form-group" align="left" >
                <label for="address">Feedback</label>
                <textarea rows="5" cols="100" class="form-control" id="feedback" name="feedback" placeholder="Feedback" required></textarea>
                </div>
              
              <button type="submit" id="Feedback_Submit" class="btn btn-primary btn-lg" style=" margin-top: 10px;" >Submit</button>
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