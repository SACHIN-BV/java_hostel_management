<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String sr_no = request.getParameter("sr_no");
            int room_no=0;
            String b_name = null;
            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel", "root", "ak47");

                Statement stmt = conn.createStatement();
                ResultSet rs1 = stmt.executeQuery("select block,room_no from room_allotment where sr_no='"+sr_no+"'");
                while(rs1.next())
                {
                b_name = rs1.getString(1);
                room_no=rs1.getInt(2);
                }
                
                String sql = null;
                if (b_name.equals("Block A")) {
                    sql = "select * from ablock";
                } else if (b_name.equals("Block B")) {
                    sql = "select * from bblock";
                } else if (b_name.equals("Block C")) {
                    sql = "select * from cblock";
                } else {
                    sql = "select * from dblock";
                }

                ResultSet rs = stmt.executeQuery(sql);

                while (rs.next()) {
                    if (rs.getInt(1) == room_no) 
                   {
                      
                            PreparedStatement stmt1=conn.prepareStatement("delete from room_allotment where sr_no='"+sr_no+"'");
                            int n = stmt1.executeUpdate();
                          
                             if (n > 0) {

                                if (b_name.equals("A")) 
                                {
                                    stmt.executeUpdate("update ablock set availability=availability+1 where room_no=" + room_no);
                                } 
                                else if (b_name.equals("B")) 
                                {
                                    stmt.executeUpdate("update bblock set availability=availability+1 where room_no=" + room_no);
                                } 
                                else if (b_name.equals("C")) 
                                {
                                    stmt.executeUpdate("update cblock set availability=availability+1 where room_no=" + room_no);
                                } 
                                else if (b_name.equals("D")) 
                                {
                                    stmt.executeUpdate("update dblock set availability=availability+1 where room_no=" + room_no);
                                }
                                       
                             }
                            
                        }
                    }
                rs.close();
                rs1.close();
                stmt.close();
                out.println("<script type=\"text/javascript\">");
                                out.println("alert('Student Removed');");
                                out.println("location='free_allotment.jsp';");
                                out.println("</script>");
                                
                }
                catch(SQLException se)
        {
            out.println("<script type=\"text/javascript\">");
                                out.println("alert('Student Removed');");
                                out.println("location='free_allotment.jsp';");
                                out.println("</script>");
        }
            
            

        %>


    </body>
</html>
