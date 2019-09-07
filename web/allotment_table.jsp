<%-- 
    Document   : allotment_table
    Created on : 2 Apr, 2017, 6:21:20 PM
    Author     : Akshay
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Allotment Details</title>
    </head>
    <body>
        <table align="center" style="width:100%">
            <tr style="font-weight:bold">
               <td>Room Number</td>
               <td>SR Number</td>
               <td>Name</td>
           </tr>


                        
       <%
              int no=0;
              String s=request.getParameter("app_list");
               try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from allotment where status=1 order by room_no");
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
