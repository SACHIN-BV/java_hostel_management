<%-- 
    Document   : dd_search
    Created on : 24 Apr, 2017, 9:00:44 AM
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
<title>Search Details</title>
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
            <h2>Fund Transactions</h2>
          </div>
            
            <form  role="form" id="feedbackForm" class="text-center">
          <div class="text-center col-lg-12">
    <table align="center" style="width:100%" >
            <tr style="font-weight:bold">
               <td>DD Num</td>
               <td>Date</td>
               <td>Amount</td>
           </tr>


                        
       <%
           int ddnum=Integer.parseInt(request.getParameter("dd_no"));
           
               try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud_hostel","root","ak47");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from fund where ddnum="+ddnum+"");
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
       } con.close();
               }catch(Exception e)
               { 
                   
               }

            %>
            </table>
           </div>
            </form>
            <br>
            <br>
            <br>
          <div class="form-group" align="left">
              <label for="applications"><h3>Transactions</h3></label>
           </div>
          <iframe src="view_fund_tr1.jsp" height="200" width="100%" 
                align="center"></iframe>
        </div>
      </div>
    </div>
  </div>
</div>
    <%@ include file="footer.jsp" %>
</html>
