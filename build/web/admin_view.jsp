<%-- 
    Document   : admin_view
    Created on : 31 Mar, 2017, 8:11:27 PM
    Author     : Akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Welcome Admin</title>
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

          
  <div class="row">
    <div class="col-lg-offset-3 col-xs-12 col-lg-6">
      <div class="jumbotron">
        <div class="row text-center">
          <div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2>Welcome Home Admin....</h2>
          </div>
            
            <form role="form"  class="text-center">
         
  <div> 
    <div class="navbar-header">
        <table style="width:100">
            <tr>
                <td></td>
            <p style="align:center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome to the Sri Jayachamarajendra College of Engineering Hostels </p>
            </tr></table>
       </div>
  </div>
                </form>
        </div>
      </div>
    </div>
  </div>

        <%@ include file="footer.jsp" %>
</html>
