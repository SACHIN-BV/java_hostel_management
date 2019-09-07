<%-- 
    Document   : count1
    Created on : 16 Apr, 2017, 8:33:22 PM
    Author     : Akshay
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try{
            int count=Integer.parseInt(request.getParameter("hid_count"));
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud_hostel","root","ak47");
         Statement stmt=con.createStatement();
        int rows =stmt.executeUpdate("update mess_items set stock = stock-quantity_per_student*"+count+"");
        }catch(Exception e){
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Not Enough Stock!Please add Some!!');");
             out.println("location='View_stock.jsp';");
             out.println("</script>");
        }
        {
            out.println("<script type=\"text/javascript\">");
             out.println("alert('Successfully Submitted!');");
             out.println("location='admin_view.jsp';");
             out.println("</script>");
        }
        
            %>
    </body>
</html>
