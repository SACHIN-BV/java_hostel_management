<%-- 
    Document   : feed_delete
    Created on : 25 Apr, 2017, 12:47:33 PM
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
      try
           {
                
               Class.forName("com.mysql.jdbc.Driver");
               Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel", "root", "ak47");
               String[] name={};
               name=request.getParameterValues("check");
               
                  
               Statement stmt=conn.createStatement();
               int n=0;
               for(int i=0;i<name.length;i++)
               {
                   n=stmt.executeUpdate("delete from stud_feed where sr_no='"+name[i]+"'");
               }
            if(n>0)
            {
                
                out.println("<script type=\"text/javascript\">");
             out.println("alert('Deleted Successfully');");
             out.println("location='view_stud_feed.jsp';");
             out.println("</script>");
               
            }
           }catch(Exception e)
           {
                out.println("<script type=\"text/javascript\">");
             out.println("alert('None of the item is selected');");
             out.println("location='view_stud_feed.jsp';");
             out.println("</script>");
               
           }
      %>
    </body>
</html>
