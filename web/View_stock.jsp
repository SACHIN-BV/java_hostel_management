<%-- 
    Document   : View_stock
    Created on : 16 Apr, 2017, 2:40:15 PM
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
<title>Stock Details</title>
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
            <h2>Stock Details</h2>
          </div>
            
            <form class="text-center">
          <div class="text-center col-lg-12">
    <div class="form-group" align="left">
        
        <table class="table" style="border: 2px; width: 100%;">
            <tr>
                <th>Item Name</th>
                <th>Avilibility(in Kg)</th>
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


              int no=0;
               try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud_hostel","root","ak47");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select item_name, stock from mess_items order by no");
       while(rs.next()){
            %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getFloat(2)%></td>
            <%
               } 
               }catch(Exception e)
               {   
               }
}
                %>
          </table></div>  
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
    <%@ include file="footer.jsp" %>
</html>
