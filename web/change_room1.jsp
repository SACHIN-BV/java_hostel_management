<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Change Room</title>
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
            <h2>Change Room</h2>
          </div>
            
            <form  action="change_room2.jsp" class="text-center">
          <div class="text-center col-lg-12">
    <div class="form-group" align="left">
        
          
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
              int no=0;
              
               try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
        Statement stmt = con.createStatement();
        String sr_no =request.getParameter("sr_no");
           ResultSet rs = stmt.executeQuery("select * from room_allotment WHERE sr_no='"+sr_no+"'");
        while(rs.next()){
            %>
            <input type="hidden" name="sr_no" value="<%=sr_no%>">
            <div class="form-group" align="left">
                <label for="name">Block</label>
                <h6><%=rs.getString(1)%></h6></div>
            <div class="form-group" align="left">
                <label for="name">Room number</label>
                <h6><%=rs.getInt(2)%></h6></div>
              <div class="form-group" align="left">
                <label for="name">Name</label>
                <h6><%=rs.getString(3)%></h6></div>
                
	        <div class="form-group" align="left">
                <label for="gender">Course</label><br>
                <input type="hidden" name="course" value="<%=rs.getString(7)%>">
                <h6><%=rs.getString(7)%></h6></div>
			    
              <div class="form-group" align="left" >
                <label for="address">Address</label>
                <h6><%=rs.getString(8)%></h6>
              </div>
                <div class="form-group" align="left">
                    <select class="form-control" id="block" name="block" required>
                        <option value="" selected disabled hidden>Block</option>
    			 <option value="A">A</option>
     			 <option value="B">B</option>
                         <option value="C">C</option>
                         <option value="D">D</option>
    			 
                </select></div>
                <div class="form-group" align="left">
                <label for="room_no">Room Number</label>
                <input type="text" class="form-control" id="room_no" pattern="^[0-9]*$" name="room_no" value="" placeholder="Room Number" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter Valid room Number' : '');" required></div>
                
        
            <%
               } 
               }catch(Exception e)
               {   
               }
}
                %>
          </div>
          
            </div>
               <button type="submit" id="allot_submit" class="btn btn-primary btn-lg" style=" margin-top: 10px;">Change</button>
                </form>
        </div>
      </div>
    </div>
  </div>
</div>
    
    <%@ include file="footer.jsp" %>
</html>