<%-- 
    Document   : view_todays
    Created on : 16 Apr, 2017, 5:38:20 PM
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
<title>Todays Needs</title>
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
            <h2>Todays Needs</h2>
          </div>
            
            <form action="count1.jsp" class="text-center">
          <div class="text-center col-lg-12">
    <div class="form-group" align="left">
        
        <table class="table" style="border: 2px; width: 100%;">
            <tr>
                <th>Item Name</th>
                <th>Quantity(in Kg)</th>
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
                   int stud_count = Integer.parseInt(request.getParameter("count"));
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud_hostel","root","ak47");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select item_name, quantity_per_student from mess_items order by no");
       while(rs.next()){
            %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getFloat(2)*stud_count%></td>
            </tr>
            <%
               }
            %><input type="hidden"name="hid_count" value="<%=stud_count%>"><%
               }catch(Exception e)
               {   
               }
}
                %>
          </table></div>  
            </div>
          <button type="submit" id="mess_Submit" class="btn btn-primary btn-lg" style=" margin-top: 10px;" >Submit</button>
              </form>
        </div>
      </div>
    </div>
  </div>
</div>
    <%@ include file="footer.jsp" %>
</html>
