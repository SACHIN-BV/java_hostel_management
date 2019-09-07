<%-- 
    Document   : view_fund_tr
    Created on : 24 Apr, 2017, 8:40:18 AM
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
<title>Application List</title>
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
            <h2>Search Fund Transactions</h2>
          </div>
            
            <form action="dd_search.jsp"  role="form" id="feedbackForm" class="text-center">
          <div class="text-center col-lg-12">
    <div class="form-group" align="left">
                <label for="sr_no">Enter DD Number</label>
                <input type="text" class="form-control" id="dd_no" pattern="^[0-9]*$" name="dd_no" placeholder="DD Number" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the valid DD Number' : '');" required>
                </div>
          
            </div>
               <button type="submit" id="submit_edit" class="btn btn-primary btn-lg" style=" margin-top: 10px;" >Submit</button>
              <button type="reset" id="submit_edit_re" class="btn btn-primary btn-lg" style=" margin-top: 10px;">Cancel</button>
                </form>
          <br>
          <div class="form-group" align="left">
                <label for="applications">Transactions</label>
           </div>
          <iframe src="view_fund_tr1.jsp" height="200" width="100%" 
                align="center"></iframe>
        </div>
      </div>
    </div>
  </div>
</div>
    <%@ include file="footer.jsp" %>
</html>
