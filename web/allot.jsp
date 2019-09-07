<%-- 
    Document   : allot
    Created on : 27 Mar, 2017, 4:13:39 PM
    Author     : Akshay
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Applicant Details</title>
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
            <h2>Applicant Details</h2>
          </div>
            
            <form  action="allot_store1.jsp" class="text-center">
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
              String s=request.getParameter("app_list");
               try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from application where no='"+s+"' and status=2");
       while(rs.next()){
            %>
            <div class="form-group" align="left">
                <label for="app_no">Application Number</label>
                <input type="hidden" name="app_no" value="<%=rs.getString(1)%>">
                <h6><%=rs.getString(1)%></h6></div>
              <div class="form-group" align="left">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" pattern="^[a-z A-Z]*$" name="name" value="<%=rs.getString(2)%>" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter only characters' : '');" required></div>
                <div class="form-group" align="left">
                <label for="sr_no">SR Number</label>
                <input type="text" class="form-control" id="sr_no" pattern="[A-Za-z]{1}\d{6}" name="sr_no" value="<%=rs.getString(3)%>" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the valid SR Number' : '');"  required>
                </div>
                <div class="form-group" align="left">
                <label for="mobile" >Mobile Number</label>
                <input type="text" class="form-control" id="mobile" maxlength="10" pattern=\d{10}|\d{13} name="mobile" value="<%=rs.getString(4)%>" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter valid phone number' : '');" required>
                </div>
              <div class="form-group" align="left">
                <label for="email">E-Mail</label>
                <input type="email" class="form-control" id="email" name="email" pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" value="<%=rs.getString(5)%>" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter valid email address' : '');" required>
                </div>
                <div class="form-group" align="left">
                <label for="gender">Gender</label><br>
                <input type="hidden" name="gender" value="<%=rs.getString(6)%>">
                <h6><%=rs.getString(6)%></h6></div>
			    
                <div class="form-group" align="left">
                <label for="gender">Course</label><br>
                <input type="hidden" name="course" value="<%=rs.getString(7)%>">
                <h6><%=rs.getString(7)%></h6></div>
			    
              <div class="form-group" align="left" >
                <label for="address">Address</label>
                <textarea rows="5" cols="100" class="form-control" id="address" name="address" required><%=rs.getString(8)%></textarea>
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
               <button type="submit" id="allot_submit" class="btn btn-primary btn-lg" style=" margin-top: 10px;">Submit</button>
                </form>
        </div>
      </div>
    </div>
  </div>
</div>
    
    <%@ include file="footer.jsp" %>
</html>
