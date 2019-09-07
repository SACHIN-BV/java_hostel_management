<% String li="",fo_name="";
    
             userid = (String)session.getAttribute("user_name");
            if(userid==null)
            {
              li="login.jsp";  
              fo_name="Admin Login";
            }
            else
            {
                li="logout.jsp";  
              fo_name="Logout";
            }
%>
<div class="container">
  <div class="row"> </div>
</div>
<footer class="text-center">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
          <p>Copyright © JSS MAHAVIDYAPEETHA. All rights reserved.</p><h5 style="align-left:"><a href="<%=li%>"><%=fo_name%></a></h5>
      </div>
    </div>
  </div>
</footer>
</body>