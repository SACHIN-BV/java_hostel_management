<%-- 
    Document   : application_table
    Created on : 2 Apr, 2017, 4:51:10 PM
    Author     : Akshay
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Applications</title>
    </head>
    <body>
        
        <table align="center" style="width:100%">
            <tr style="font-weight:bold">
               <td>Number</td>
               <td>Name</td>
               <td>SR Number</td>
               <td>Phone</td>
               <td>Gender</td>
               <td>Course</td>
               <td>Address</td>
           </tr>


                        
       <%
              int no=0;
              String s=request.getParameter("app_list");
               try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from application where status=1 order by no");
       while(rs.next())
       {
           %>
           <tr>
               <td>
                    <%=rs.getInt(1)%>
                </td>
                <td>
                    <%=rs.getString(2)%>
                </td>
            
                <td>
                    <%=rs.getString(3)%>
                </td>
                 <td>
                    <%=rs.getString(4)%>
                </td>
                 <td>
                    <%=rs.getString(6)%>
                </td>
                <td>
                    <%=rs.getString(7)%>
                </td>
                <td>
                    <%=rs.getString(8)%>
                </td>
               
            </tr> 
           <%
       } 
               }catch(Exception e)
               { 
                   
               }

            %>
            </table>
    </body>
</html>
