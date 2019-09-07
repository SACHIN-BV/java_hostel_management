<%-- 
    Document   : count
    Created on : 16 Apr, 2017, 4:00:07 PM
    Author     : Akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Student Count</title>
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

          
  <div id="edit_form" class="container">
  <div class="row">
    <div class="col-lg-offset-3 col-xs-12 col-lg-6">
      <div class="jumbotron">
        <div class="row text-center">
          <div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2>Student Count</h2>
          </div>
            <form role="form" action="view_todays.jsp" class="text-center">
              <div class="form-group" align="left">
                
                <input type="text" class="form-control" id="count" pattern="^[0-9 .]*$" name="count" placeholder="Student Count" required></div>
              <button type="submit" id="Item_Submit" class="btn btn-primary btn-lg" style=" margin-top: 10px;" >Submit</button>
              <button type="reset" id="Item_clr" class="btn btn-primary btn-lg" style=" margin-top: 10px;">Cancel</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
        <%@ include file="footer.jsp" %>
</html>