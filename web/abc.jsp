<%-- 
    Document   : abc
    Created on : 25 Apr, 2017, 10:24:16 AM
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
<title>Room Search</title>
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
            <h2>Room Search</h2>
          </div>
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
            <form action="abc1.jsp" role="form" class="text-center">
          <div class="text-center col-lg-12">
    <div class="form-group" align="left">
        <select class="form-control" id="block" name="block" required>
            <option value="" selected disabled hidden>Select Block</option>
          <option value="A">Block A</option>
          <option value="B">Block B</option>
          <option value="C">Block C</option>
          <option value="D">Block D</option>

          </select></div>
          <div class="form-group" align="left">
                <label for="name">Room Number</label>
                <input type="text" class="form-control" id="room" pattern="^[0-9]*$" name="room" placeholder="Room Number" required></div>
               
            </div>
          <button type="submit" id="submit_edit" class="btn btn-primary btn-lg" style=" margin-top: 10px;" >Submit</button>
              <button type="reset" id="submit_edit_re" class="btn btn-primary btn-lg" style=" margin-top: 10px;">Cancel</button>
                </form>
             
        </div>
      </div>
    </div>
  </div>
</div>
    <%@ include file="footer.jsp" %>
</html>
