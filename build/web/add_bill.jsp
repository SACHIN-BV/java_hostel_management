<%-- 
    Document   : add_bill
    Created on : 21 Apr, 2017, 10:32:09 PM
    Author     : Akshay
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% int billnum=Integer.parseInt(request.getParameter("billnum"));
       String date=request.getParameter("date");
       String amount=request.getParameter("amount");
       int amt=Integer.parseInt(request.getParameter("amount"));
           try {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud_hostel","root","ak47");
               Statement stmt=con.createStatement();
               stmt.execute("insert into bill values("+billnum+",'"+date+"','"+amount+"')");
               stmt.executeUpdate("update amount set amt=amt-"+amt+"");
              
                   
           }catch(Exception e){
                out.println("<script type=\"text/javascript\">");
             out.println("alert('Not enough found!! Please Add some');");
             out.println("location='view_fund.jsp';");
             out.println("</script>");
           }
            out.println("<script type=\"text/javascript\">");
             out.println("alert('Successfully Submitted');");
             out.println("location='add_bill_details.jsp';");
             out.println("</script>");
            
            %>
            
    </body>
</html>