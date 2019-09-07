<%-- 
    Document   : application1
    Created on : 30 Mar, 2017, 9:06:36 PM
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
            <h2>Application</h2>
          </div>
          <div class="text-center col-lg-12"> 
            <!-- CONTACT FORM https://github.com/jonmbake/bootstrap3-contact-form -->
            <form role="form" action="application.jsp" id="feedbackForm" class="text-center">
              <div class="form-group" align="left">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" pattern="^[a-z A-Z]*$" name="name" placeholder="Name" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter only characters' : '');"  required></div>
                <div class="form-group" align="left">
                <label for="sr_no">SR Number</label>
                <input type="text" class="form-control" id="sr_no" pattern="[A-Za-z]{1}\d{6}" name="sr_no" placeholder="SR Number" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the valid SR Number' : '');" required>
                </div>
                <div class="form-group" align="left">
                <label for="mobile" >Mobile Number</label>
                <input type="text" class="form-control" id="mobile" maxlength="10" pattern=\d{10}|\d{13} name="mobile" placeholder="Mobile Number" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter valid phone number' : '');" required>
                </div>
              <div class="form-group" align="left">
                <label for="email">E-Mail</label>
                <input type="email" class="form-control" id="email" name="email" pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" placeholder="Email Address" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter valid email address' : '');" required>
                </div>
                <div class="form-group" align="left">
                <label for="gender">Gender</label><br>
                <label><input type="radio" id="male" name="optradio" value="Male" required>MALE</label>
			    </div>
                <div class="form-group" align="left">
                    <select class="form-control" id="course" name="Course" required>
                        <option value="" selected disabled hidden>Course</option>
    			 <option value="cs">CS</option>
     			 <option value="civil">Civil</option>
    			 <option value="ec">EC</option>
                 <option value="ee">EE</option>
                 <option value="is">IS</option>
                 <option value="mba">MBA</option>
                 <option value="mca">MCA</option>
                 <option value="mech">Mech</option>
                 <option value="mtech">M.Tech</option>
                </select></div>
              <div class="form-group" align="left" >
                <label for="address">Address</label>
                <textarea rows="5" cols="100" class="form-control" id="address" name="address" placeholder="Address" required></textarea>
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