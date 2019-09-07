<%-- 
    Document   : logout
    Created on : 31 Mar, 2017, 9:00:52 PM
    Author     : Akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%session.invalidate();
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Successfully Loged out');");
        out.println("location='login.jsp';");
        out.println("</script>");
       
       %>
    </body>
</html>
