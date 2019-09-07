<%-- 
    Document   : status_check
    Created on : 24 Apr, 2017, 1:30:21 AM
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
<title>Add to Stock</title>
<link rel="stylesheet" href="css/bootstrap.css">

</head>
<body>
    <%@ include file="header.jsp" %>
    <div class="well"> </div>

          
          <div id="edit_form" class="container">
  <div class="row">
    <div class="col-lg-offset-3 col-xs-12 col-lg-6">
      <div class="jumbotron">
        <div class="row text-center">
          <div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2>Application Status</h2>
          </div>
            
            <form action="show_status.jsp"  role="form" class="text-center">
          <div class="text-center col-lg-12">
          <div class="form-group" align="left">
                <label for="sr_no">Enter SR Number</label>
                <input type="text" class="form-control" id="sr_no" pattern="[A-Za-z]{1}\d{6}" name="sr_no" placeholder="SR Number" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the valid SR Number' : '');" required>
                </div>
              <button type="submit" id="submit_edit" class="btn btn-primary btn-lg" style=" margin-top: 10px;" >Check</button>
            </div>
                </form>
        </div>
      </div>
    </div>
  </div>
</div>
    <%@ include file="footer.jsp" %>
</html>
