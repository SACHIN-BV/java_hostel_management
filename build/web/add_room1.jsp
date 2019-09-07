<%-- 
    Document   : add_room1
    Created on : 26 Apr, 2017, 6:26:25 AM
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

            String b_name = request.getParameter("block");
            int room_no = Integer.parseInt(request.getParameter("room"));

            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel", "root", "ak47");

                Statement stmt = conn.createStatement();

                String sql = null;
                if (b_name.equals("A")) 
                {
                    PreparedStatement stmt1 = conn.prepareStatement("INSERT INTO ablock VALUES(?,?)");
                            stmt1.setInt(1, Integer.parseInt(request.getParameter("room")));
                            stmt1.setInt(2, Integer.parseInt(request.getParameter("avail")));
                            stmt1.executeUpdate();
                }  
                if (b_name.equals("B")) 
                {
                   PreparedStatement stmt1 = conn.prepareStatement("INSERT INTO bblock VALUES(?,?)");
                            stmt1.setInt(1, Integer.parseInt(request.getParameter("room")));
                            stmt1.setInt(2, Integer.parseInt(request.getParameter("avail")));
                            stmt1.executeUpdate();
                }  
                if (b_name.equals("C")) {
                    PreparedStatement stmt1 = conn.prepareStatement("INSERT INTO cblock VALUES(?,?)");
                            stmt1.setInt(1, Integer.parseInt(request.getParameter("room")));
                            stmt1.setInt(2, Integer.parseInt(request.getParameter("avail")));
                            stmt1.executeUpdate();
                } 
                if (b_name.equals("D"))
                {
                   PreparedStatement stmt1 = conn.prepareStatement("INSERT INTO dblock VALUES(?,?)");
                            stmt1.setInt(1, Integer.parseInt(request.getParameter("room")));
                            stmt1.setInt(2, Integer.parseInt(request.getParameter("avail")));
                            stmt1.executeUpdate();
                }
                
               out.println("<script type=\"text/javascript\">");
             out.println("alert('Room Added Successfully');");
             out.println("location='change_room.jsp';");
             out.println("</script>"); 

               
                }
                catch(Exception se)
        {
        out.println("<script type=\"text/javascript\">");
             out.println("alert('cannot be updated room already Exists!!');");
             out.println("location='change_room.jsp';");
             out.println("</script>");
        }

        %>
    </body>
</html>
