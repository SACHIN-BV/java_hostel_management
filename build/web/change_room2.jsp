sss<%-- 
    Document   : change_room2
    Created on : 26 Apr, 2017, 1:51:11 AM
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
       String block = request.getParameter("block");
            int room_no =Integer.parseInt(request.getParameter("room_no"));
       String sr_no= request.getParameter("sr_no");
            try {
              
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel", "root", "ak47");

                Statement stmt = conn.createStatement();
                  
                String sql = null;
                
                if (block.equals("A")) {
                    
                    sql = "select * from ablock";
                }  if (block.equals("B")) {
                    sql = "select * from bblock";
                }  if (block.equals("C")) {
                    sql = "select * from cblock";
                } if (block.equals("D")){
                    sql = "select * from dblock";
                }

                ResultSet rs = stmt.executeQuery(sql);
                 
                while (rs.next()) {
                   
                    if (rs.getInt(1) == Integer.parseInt(request.getParameter("room_no"))) {
                        
                        if (rs.getInt(2) > 0) {
                            
                           rs=stmt.executeQuery("select block,room_no from room_allotment where sr_no='"+sr_no+"'");
                           rs.next();
                           String block1=rs.getString(1);
                           if (block1.equals("A")) {
                    
                    sql = "update ablock set availability=availability+1 where room_no="+rs.getInt(2)+"";
                }  if (block1.equals("B")) {
                    sql = "update bblock set availability=availability+1 where room_no="+rs.getInt(2)+"";
                }  if (block1.equals("C")) {
                    sql = "update cblock set availability=availability+1 where room_no="+rs.getInt(2)+"";
                } if (block1.equals("D")){
                    sql = "update dblock set availability=availability+1 where room_no="+rs.getInt(2)+"";
                }
                           int n=  stmt.executeUpdate(sql);
         
                        n=  stmt.executeUpdate("update room_allotment set block='"+block+"',room_no='"+room_no+"' where sr_no='"+sr_no+"'");
                                 
                            if (n > 0) {
                                    
                                if (block.equals("A")) 
                                {
                                    stmt.executeUpdate("update ablock set availability=availability-1 where room_no=" + room_no);
                                    //stmt.executeUpdate("update ablock set availability=availability+1 where room_no=" + room_no);
                                } 
                                 if (block.equals("B")) 
                                {
                                    stmt.executeUpdate("update bblock set availability=availability-1 where room_no=" + room_no);
                                    //stmt.executeUpdate("update bblock set availability=availability+1 where room_no=" + room_no);
                                } 
                                 if (block.equals("C")) 
                                {
                                    stmt.executeUpdate("update cblock set availability=availability-1 where room_no=" + room_no);
                                     //stmt.executeUpdate("update cblock set availability=availability+1 where room_no=" + room_no);
                                } 
                                if (block.equals("D")) 
                                {
                                    stmt.executeUpdate("update dblock set availability=availability-1 where room_no=" + room_no);
                                    //stmt.executeUpdate("update dblock set availability=availability+1 where room_no=" + room_no);
                                }
                                out.println("<script type=\"text/javascript\">");
             out.println("alert('Room has been Successfully Changed');");
             out.println("location='change_room.jsp';");
             out.println("</script>");
                                       }
                            } else 
                              {
                                  out.println("<script type=\"text/javascript\">");
             out.println("alert('cannot be updated room is full');");
             out.println("location='change_room.jsp';");
             out.println("</script>");
                                
                              }
                        }
                    }
                }
                catch(Exception se)
        {
        
        }

        %>
    </body>
</html>
