<%-- 
    Document   : view_stud_feed
    Created on : 25 Apr, 2017, 12:28:11 PM
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
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Room Feedback View</title>
<link rel="stylesheet" href="css/bootstrap.css">

</head>
<body>
    <%@ include file="header.jsp" %>
    <div class="well"> </div>

          
          <div id="edit_form" class="container">
  <div class="row">
    <div class="col-lg-offset-3 col-xs-12 col-lg-6">
      <div class="jumbotron">
        <div class="row text-center">
          <div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2>Room Feedback View</h2>
          </div>
            
            <form role="form" id="feedbackForm" class="text-center" action="feed_delete.jsp">
          <div class="text-center col-lg-12">
    <div class="form-group" align="left">
        <table style="width:100%;" border="1"><tbody>
                <tr>
                    <th></th>
                <th>SR No</th>
                <th>Name</th> 
                <th>Block</th>
                <th>Room no</th>
                <th>Feedback</th>
                </tr>
          <%
              
            userid = (String)session.getAttribute("user_name");
            if(userid==null)
            {
                out.println("<script type=\"text/javascript\">");
             out.println("alert('You need to login to access');");
             out.println("location='login.jsp';");
             out.println("</script>");
            }
            else
            {
                try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
            Statement stmt=conn.createStatement();
            String sql="select sr_no,name,block,room_no,feedback from stud_feed";
            ResultSet rs=stmt.executeQuery(sql);
     
                            while(rs.next())
                            {
                             %>
                            <tr>  
                           <td><input type="checkbox" name="check" value=<%=rs.getString(1)%>></td>
                           <td><%=rs.getString(1)%></td>
                           <td><%=rs.getString("name")%></td>
                           <td><%=rs.getString("block")%></td>
                           <td><%=rs.getString("room_no")%></td>
                           <td><%=rs.getString("feedback")%></td>
                            </tr>
                    
                    <%} %>
                </tbody>
            </table>
       <button type="submit"  class="btn btn-primary btn-lg" style=" margin-top: 10px;" >Delete</button>
              
       
        </form>
       <% }catch(Exception se)
        {
            se.printStackTrace();
        }


              
              
}
                %>
          </tbody></table></div>
          
            </div>
               </form>
        </div>
      </div>
    </div>
  </div>
</div>
    <%@ include file="footer.jsp" %>
</html>
