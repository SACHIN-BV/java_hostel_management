<%-- 
    Document   : view_feedback
    Created on : 1 Apr, 2017, 12:16:50 PM
    Author     : Akshay
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Feedback View</title>
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
            <h2>Feedback View</h2>
          </div>
            
            <form role="form" id="feedbackForm" class="text-center">
          <div class="text-center col-lg-12">
    <div class="form-group" align="left">
        <table style="width:100%;" border="1"><tbody>
                <tr>
                <th>Name</th>
                <th>Contact No</th> 
                <th>E-mail</th>
                <th>Feedback</th>
                </tr>
          <%
              
            userid = (String)session.getAttribute("user_name");
            if(userid==null)
            {
                out.println("<script type=\"text/javascript\">");
             out.println("alert('You need to login to access');");
             out.println("location='login.jsp';");
             out.println("</script>");
            }
            else
            {


              
               try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud_hostel","root","ak47");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from feedback order by no");
       while(rs.next())
            {
                %>
                <tr>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                </tr>
                
                <%
            } 
               }catch(Exception e)
               {   
               }
}
                %>
          </tbody></table></div>
          
            </div>
               </form>
        </div>
      </div>
    </div>
  </div>
</div>
    <%@ include file="footer.jsp" %>
</html>