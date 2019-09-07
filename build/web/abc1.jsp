<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Room Search</title>
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
            <h2>Room Search</h2>
          </div>
            
            <form role="form" id="feedbackForm" class="text-center">
          <div class="text-center col-lg-12">
    <div class="form-group" align="left">
        
                <%
            String b_name = request.getParameter("block");
            String room_no = request.getParameter("room");
 
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
            Statement stmt=conn.createStatement();
            String sql="select * from room_allotment where block='"+b_name+"' && room_no='"+room_no+"'";
            ResultSet rs=stmt.executeQuery(sql);
            ResultSetMetaData md=rs.getMetaData();
            int n=md.getColumnCount();
           %>
                
                    <%
           
                            while(rs.next())
                            {
                                
                            %>
                            <table style="width:100%;" border="1" alt="No Data Found"><tbody>
                                <thead></thead>
                                <br>
                                <br>
                    <tr>
                        <th>Block:</th>   
                        <td><%=rs.getString(1)%></td>
                    </tr>
                    <tr>
                        <th>ROOM NO</th>  
                        <td><%=rs.getInt(2)%></td>
                    </tr>    
                    <tr>
                       <th>Name</th>  
                       <td><%=rs.getString(3)%></td> 
                    </tr>
                     <tr>    
                         <th>Branch:</th>
                        <td><%=rs.getString(8)%></td>
                    </tr>
                    <tr>    
                         <th>Address</th>
                        <td><%=rs.getString(9)%></td>
                    </tr>
                    <%  } %>
                </tbody>
            </table>
<% }catch(Exception se)
        {
            out.print(se);
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