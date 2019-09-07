<%-- 
    Document   : show_status
    Created on : 24 Apr, 2017, 1:36:26 AM
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
<title>Application Status</title>
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
            <h2>Application Status</h2>
          </div>
            
            <form class="text-center">
          <div class="text-center col-lg-12">
    <div class="form-group" align="left">
        
          <%
              int no=0;
              String sr_no=request.getParameter("sr_no");
              
               try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from application where sr_no='"+sr_no+"'");
       while(rs.next()){
           if(rs.getInt(10)==2)
           {
               no=rs.getInt(10);
            %>
            <div class="form-group" align="left">
                <label for="app_no">Application Number</label>
                <h6><%=rs.getString(1)%></h6></div>
              <div class="form-group" align="left">
                <label for="name">Name</label>
                <h6><%=rs.getString(2)%></h6></div>
                <div class="form-group" align="left">
                <label for="sr_no">SR Number</label>
                <h6><%=rs.getString(3)%></h6>
                </div>
                <div class="form-group" align="left">
                <label for="mobile" >Mobile Number</label>
                <h6><%=rs.getString(4)%></h6>
                </div>
              <div class="form-group" align="left">
                <label for="email">E-Mail</label>
                <h6><%=rs.getString(5)%></h6>
              </div>
                <div class="form-group" align="left">
                <label for="gender">Gender</label><br>
                <h6><%=rs.getString(6)%></h6></div>
			    
                <div class="form-group" align="left">
                <label for="gender">Course</label><br>
                <h6><%=rs.getString(7)%></h6></div>
			    
              <div class="form-group" align="left" >
                <label for="address">Address</label>
                <h6><%=rs.getString(8)%></h6>
              </div>
              <div class="form-group" align="left" >
                <h3>Application Accepted</h3>
              </div><%
                  }else if(rs.getInt(10)==1)
                    {
no=rs.getInt(10);
                        %><div class="form-group" align="left">
                <label for="app_no">Application Number</label>
                <h6><%=rs.getString(1)%></h6></div>
              <div class="form-group" align="left">
                <label for="name">Name</label>
                <h6><%=rs.getString(2)%></h6></div>
                <div class="form-group" align="left">
                <label for="sr_no">SR Number</label>
                <h6><%=rs.getString(3)%></h6>
                </div>
                <div class="form-group" align="left">
                <label for="mobile" >Mobile Number</label>
                <h6><%=rs.getString(4)%></h6>
                </div>
              <div class="form-group" align="left">
                <label for="email">E-Mail</label>
                <h6><%=rs.getString(5)%></h6>
              </div>
                <div class="form-group" align="left">
                <label for="gender">Gender</label><br>
                <h6><%=rs.getString(6)%></h6></div>
			    
                <div class="form-group" align="left">
                <label for="gender">Course</label><br>
                <h6><%=rs.getString(7)%></h6></div>
			    
              <div class="form-group" align="left" >
                <label for="address">Address</label>
                <h6><%=rs.getString(8)%></h6>
              </div>
                        <div class="form-group" align="left" >
                <h3>Application Under processing</h3>
              </div>
              <%
                  }}if(no==0)
                  {
                  %>
                  <div class="form-group" align="left" >
                <h3>Application Not Found</h3>
              </div>
              <%}
                    
                    
               } catch(Exception e)
               {   
out.print(e);
               }
                %>
          </div>  
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
    <%@ include file="footer.jsp" %>
</html>
