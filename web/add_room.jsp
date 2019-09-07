<%-- 
    Document   : add_room
    Created on : 26 Apr, 2017, 6:17:21 AM
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
<title>Add Room</title>
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
            <h2>Add Room</h2>
          </div>
            
            <form  action="add_room1.jsp" class="text-center">
          <div class="text-center col-lg-12">
    <div class="form-group" align="left">
        
          
          <%
             userid = (String)session.getAttribute("user_name");
            if(userid==null)
            {
                out.println("<script type=\"text/javascript\">");
             out.println("alert('You need to login to access');");
             out.println("location='login.jsp';");
             out.println("</script>");
            }%>
                <div class="form-group" align="left">
                    <select class="form-control" id="block" name="block" required>
                        <option value="" selected disabled hidden>Block</option>
    			 <option value="A">A</option>
     			 <option value="B">B</option>
                         <option value="C">C</option>
                         <option value="D">D</option>
    			 
                </select></div>
                <div class="form-group" align="left">
                <label for="room_no">Room Number</label>
                <input type="text" class="form-control" id="room" pattern="^[0-9]*$" name="room" value="" placeholder="Room Number" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter Valid room Number' : '');" required></div>
         <div class="form-group" align="left">
                <label for="room_no">Availability</label>
                <input type="text" class="form-control" id="avail" pattern="^[0-9]*$" name="avail" value="" placeholder="Availability" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter Valid Availability' : '');" required></div>
    </div>
          
            </div>
               <button type="submit" id="allot_submit" class="btn btn-primary btn-lg" style=" margin-top: 10px;">Change</button>
                </form>
        </div>
      </div>
    </div>
  </div>
</div>
    
    <%@ include file="footer.jsp" %>
</html>