<%-- 
    Document   : allot_store1
    Created on : 23 Apr, 2017, 3:59:59 PM
    Author     : Akshay
--%>

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

            String b_name = request.getParameter("block");
            int n=0,a=0;
            String room_no = request.getParameter("room_no");
            String name=request.getParameter("name");
        String sr_no=request.getParameter("sr_no");
        String mobile=request.getParameter("mobile");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        String app_no=request.getParameter("app_no");

            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
                Statement stmt = conn.createStatement();

                String sql = null;
                if (b_name.equals("A")) {
                    sql = "select * from ablock";
                }  if (b_name.equals("B")) {
                    sql = "select * from bblock";
                }  if (b_name.equals("C")) {
                    sql = "select * from cblock";
                } if (b_name.equals("D")){
                    sql = "select * from dblock";
                }

                ResultSet rs = stmt.executeQuery(sql);

                while (rs.next()) {
                    if (rs.getInt(1) == Integer.parseInt(request.getParameter("room_no"))) {
                        if (rs.getInt(2) > 0) {
                            PreparedStatement stmt1 = conn.prepareStatement("INSERT INTO room_allotment VALUES(?,?,?,?,?,?,?,?,?)");
                            stmt1.setString(1, request.getParameter("block"));
                            stmt1.setInt(2, Integer.parseInt(request.getParameter("room_no")));
                            stmt1.setString(3, request.getParameter("name"));
                            stmt1.setString(4, request.getParameter("sr_no"));
                            stmt1.setString(5, request.getParameter("mobile"));
                            stmt1.setString(6, request.getParameter("email"));
                            stmt1.setString(7, request.getParameter("gender"));
                            stmt1.setString(8, request.getParameter("course"));
                            stmt1.setString(9, request.getParameter("address"));
                            n = stmt1.executeUpdate();
                        } 
                            if (n > 0) {
                                a=0;
                                stmt.execute("delete from application where no='"+app_no+"'");
                                if (b_name.equals("A")) 
                                {
                                    a=stmt.executeUpdate("update ablock set availability=availability-1 where room_no=" + room_no);
                                } 
                                 if (b_name.equals("B")) 
                                {
                                    a=stmt.executeUpdate("update bblock set availability=availability-1 where room_no=" + room_no);
                                } 
                                 if (b_name.equals("C")) 
                                {
                                    a=stmt.executeUpdate("update cblock set availability=availability-1 where room_no=" + room_no);
                                } 
                                if (b_name.equals("D")) 
                                {
                                    a= stmt.executeUpdate("update dblock set availability=availability-1 where room_no=" + room_no);
                                }
                                       
                            } else 
                              {
                                out.println("<script type=\"text/javascript\">");
                                out.println("alert('Room is full, please choose some other');");
                                out.println("location='selection_list.jsp';");
                                out.println("</script>");
                              }
                        if(a>0&&n>0)
                        {
                            out.println("<script type=\"text/javascript\">");
                                out.println("alert('Room has been alloted');");
                                out.println("location='selection_list.jsp';");
                                out.println("</script>");
                        }
                        }
                    }
                }
                catch(Exception se)
        {
        out.println("<script type=\"text/javascript\">");
                                out.println("alert('Student already exists');");
                                out.println("location='selection_list.jsp';");
                                out.println("</script>");
        }

        %>


    </body>
</html>