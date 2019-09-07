<%-- 
    Document   : add_bill_details
    Created on : 21 Apr, 2017, 10:08:36 PM
    Author     : Akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
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
            <h2>Bill Details</h2>
          </div>
          <div class="text-center col-lg-12"> 
            <!-- CONTACT FORM https://github.com/jonmbake/bootstrap3-contact-form -->
            <form role="form" action="add_bill.jsp" id="feedbackForm" class="text-center">
              <div class="form-group" align="left">
                <label for="bill_no">Bill Number: </label>
                <input type="text" class="form-control" id="billnum" name="billnum"  placeholder="Bill Number" pattern="^[0-9]*$" name="bill_no"  onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the valid bill Number' : '');" required></div>
                <div class="form-group" align="left">
                <label for="sr_no">Date: </label>
                <input type="date" class="form-control" name="date" required="" placeholder="Date">
                </div>
                <div class="form-group" align="left">
                <label for="amount" >Amount:</label>
                <input type="text" class="form-control" id="amount"  pattern="^[0-9]*$" name="amount" placeholder="Amount" required>
                </div>
              
              <button type="submit" id="Application_Submit" class="btn btn-primary btn-lg" style=" margin-top: 10px;" >Submit</button>
              <button type="reset" id="Application_clr" class="btn btn-primary btn-lg" style=" margin-top: 10px;">Cancel</button>
            </form>
            <!-- END CONTACT FORM --> 
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- FOOTER -->
<div class="container">
  <div class="row"> </div>
</div>
<%@ include file="footer.jsp" %>
</html>