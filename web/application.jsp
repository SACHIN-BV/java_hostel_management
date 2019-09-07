<%-- 
    Document   : application
    Created on : 22 Mar, 2017, 11:51:49 PM
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
            int no=0;
          String name=request.getParameter("name");
        String sr_no=request.getParameter("sr_no");
        String mobile=request.getParameter("mobile");
        String email=request.getParameter("email");
        String optradio=request.getParameter("optradio");
        String Course=request.getParameter("Course");
        String address=request.getParameter("address");
        String password=null;
        password=request.getParameter("password_two");
        
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
         Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select max(no) from application");
         while(rs.next())
      {
        if(rs.getInt(1)==0)
        {
            no =1;
        }
        else
        {
            no = rs.getInt(1)+1;
        }
      }
         Boolean a=stmt.execute("insert into application values('"+no+"','"+name+"','"+sr_no+"','"+mobile+"','"+email+"','"+optradio+"','"+Course+"','"+address+"','"+password+"',1)");
        
        
        }catch(Exception e){
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Application already Exists! Please contact the Authorities for further details');");
             out.println("location='application1.jsp';");
             out.println("</script>");
        }
        {
            out.println("<script type=\"text/javascript\">");
             out.println("alert('Application Successfully Submitted!');");
             out.println("location='home.jsp';");
             out.println("</script>");
        }
        
            %>
        
           
            
    </body>
</html>
