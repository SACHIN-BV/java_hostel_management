<%-- 
    Document   : view_fund_tr1
    Created on : 24 Apr, 2017, 8:41:21 AM
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
        <title>Funds</title>
    </head>
    <body>
        
        <table align="center" style="width:100%" border="1">
            <tr style="font-weight:bold">
               <td>DD Num</td>
               <td>Date</td>
               <td>Amount</td>
           </tr>


                        
       <%
           
               try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud_hostel","root","ak47");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from fund order by ddnum");
       while(rs.next())
       {
           %>
           <tr>
               <td>
                    <%=rs.getInt(1)%>
                </td>
                <td>
                    <%=rs.getDate(2)%>
                </td>
            
                <td>
                    <%=rs.getInt(3)%>
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