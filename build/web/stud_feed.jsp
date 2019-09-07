<%-- 
    Document   : stud_feed
    Created on : 25 Apr, 2017, 11:19:10 AM
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
            <h2>Room Feedback</h2>
          </div>
          <div class="text-center col-lg-12"> 
            <form role="form" action="room_feedback" id="feedbackForm" class="text-center">
              <div class="form-group" align="left">
                <label for="sr_no">SR Number</label>
                <input type="text" class="form-control" id="sr_no" pattern="[A-Za-z]{1}\d{6}" name="sr_no" placeholder="SR Number" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the valid SR Number' : '');" required>
                </div>
                <div class="form-group" align="left">
                <label for="room_no">Room Number</label>
                <input type="text" class="form-control" id="room_no" pattern="^[0-9]*$" name="room_no" value="" placeholder="Room Number" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter Valid room Number' : '');" required></div>
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
