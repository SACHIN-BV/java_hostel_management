<%-- 
    Document   : selection_list
    Created on : 23 Apr, 2017, 3:44:31 PM
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
<title>Selected Application List</title>
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
            <h2>Selected Application List</h2>
          </div>
            
            <form action="allot.jsp"  role="form" id="feedbackForm" class="text-center">
          <div class="text-center col-lg-12">
    <div class="form-group" align="left">
        <select class="form-control" id="app_list" name="app_list" required>
            <option value="" selected disabled hidden>Select Application</option>
          
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
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select no from application where status=2 order by no");
       while(rs.next()){
            %>
        <option value ="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
            <%
               } 
               }catch(Exception e)
               {   
               }
}
                %>
          </select></div>
          
            </div>
               <button type="submit" id="submit_edit" class="btn btn-primary btn-lg" style=" margin-top: 10px;" >Submit</button>
              <button type="reset" id="submit_edit_re" class="btn btn-primary btn-lg" style=" margin-top: 10px;">Cancel</button>
                </form>
          <br>
          <div class="form-group" align="left">
                <label for="applications">Applications</label>
           </div>
          <iframe src="selection_table.jsp" height="200" width="100%" 
                align="center"></iframe>
        </div>
      </div>
    </div>
  </div>
</div>
    <%@ include file="footer.jsp" %>
</html>
