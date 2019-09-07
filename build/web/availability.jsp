<%-- 
    Document   : availability
    Created on : 25 Apr, 2017, 11:02:31 AM
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
<title>Room Availability</title>
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
            <h2>Room Availability</h2>
          </div>
            
            <form role="form" id="feedbackForm" class="text-center">
          <div class="text-center col-lg-12">
    <div class="form-group" align="left">
        
                <h1>BLOCK A</h1>
        <%
        try
        {
            
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
            Statement stmt=conn.createStatement();
             
                      
            String sql="select * from ablock";
            ResultSet rs=stmt.executeQuery(sql);
            ResultSetMetaData md=rs.getMetaData();
            int n=md.getColumnCount();
           %><table style="width:100%;" border="1">
                <thead>
                    <%
                        for(int i=1;i<=2;i++)
       {
           out.println("<th>"+md.getColumnName(i)+"</th>");
       }
           
                            while(rs.next())
                            {
                             out.println("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getInt(2)+"</td></tr>");   
                           
                    
                    } %>
                </thead>
            </table>
<%}
        catch(SQLException se)
        {
            se.printStackTrace();
        }
         %>
         
        
        
         <h1>BLOCK B</h1>             
         <%
        try
        {
            
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
            Statement stmt=conn.createStatement();
             
                      
            String sql="select * from bblock";
            ResultSet rs=stmt.executeQuery(sql);
            ResultSetMetaData md=rs.getMetaData();
            int n=md.getColumnCount();
           %><table style="width:100%;" border="1">
                <thead>
                    <%
                        for(int i=1;i<=2;i++)
       {
           out.println("<th>"+md.getColumnName(i)+"</th>");
       }
           
                            while(rs.next())
                            {
                             out.println("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getInt(2)+"</td></tr>");   
                           
                    
                    } %>
                </thead>
            </table>
<%}
        catch(SQLException se)
        {
            se.printStackTrace();
        }
         %>
         

   <h1>BLOCK C</h1>
        <%
        try
        {
            
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
            Statement stmt=conn.createStatement();
             
                      
            String sql="select * from cblock";
            ResultSet rs=stmt.executeQuery(sql);
            ResultSetMetaData md=rs.getMetaData();
            int n=md.getColumnCount();
           %><table style="width:100%;" border="1">
                <thead>
                    <%
                        for(int i=1;i<=2;i++)
       {
           out.println("<th>"+md.getColumnName(i)+"</th>");
       }
           
                            while(rs.next())
                            {
                             out.println("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getInt(2)+"</td></tr>");   
                           
                    
                    } %>
                </thead>
            </table>
<%}
        catch(SQLException se)
        {
            se.printStackTrace();
        }
         %>
         
        
        
         <h1>BLOCK D</h1>             
         <%
        try
        {
            
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
            Statement stmt=conn.createStatement();
             
                      
            String sql="select * from dblock";
            ResultSet rs=stmt.executeQuery(sql);
            ResultSetMetaData md=rs.getMetaData();
            int n=md.getColumnCount();
           %><table style="width:100%;" border="1">
                <thead>
                    <%
                        for(int i=1;i<=2;i++)
       {
           out.println("<th>"+md.getColumnName(i)+"</th>");
       }
           
                            while(rs.next())
                            {
                             out.println("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getInt(2)+"</td></tr>");   
                           
                    
                    } %>
                </thead>
            </table>
<%}
        catch(SQLException se)
        {
            se.printStackTrace();
        }
         %>
          
            </div>
               </form>
        </div>
      </div>
    </div>
  </div>
</div>
    <%@ include file="footer.jsp" %>
</html>