<%-- 
    Document   : add_fund1
    Created on : 22 Apr, 2017, 12:09:09 AM
    Author     : Akshay
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% int ddnum=Integer.parseInt(request.getParameter("ddnum"));
        String date=request.getParameter("date");
        String amount=request.getParameter("amount");
        try {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud_hostel","root","ak47");
               Statement stmt=con.createStatement();
               stmt.execute("insert into fund values("+ddnum+",'"+date+"','"+amount+"')");
               stmt.execute("update amount set amt = amt + "+amount+"");
               
          
                       
        
            
            
        }catch(Exception e){
            out.println("<script type=\"text/javascript\">");
             out.println("alert('DD already Exists! Please check the DD Number once again');");
             out.println("location='add_bill_details.jsp';");
             out.println("</script>");
        }
        out.println("<script type=\"text/javascript\">");
             out.println("alert('Successfully Submitted');");
             out.println("location='add_bill_details.jsp';");
             out.println("</script>");
            %>
    </body>
</html>
