 <% HttpSession nsession = request.getSession(false);
             String userid = (String)session.getAttribute("user_name");
            if(userid==null)
            {
               %> <header>
  <div class="col-xs-12">
      <div class="col-lg-4 col-sm-12 text-center col-md-3"><a href="home.jsp"><img  alt="140x140" style="width: 240px; height: 170px;" src="img/logo.JPG" data-holder-rendered="true"></a></div>
    <h3 class="text-center">JSS Mahavidyapeetha</h3>
    <h1 class="text-center">Sri Jayachamarajendra College of Engineering </h1>
    <h2 class="text-center">Hostels</h2>
    <p>&nbsp;</p>
</div>
<nav>
  <div  class="container-fluid"> 
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="home.jsp">Home</a>
      <a class="navbar-brand" href="home.jsp#about">About Us</a>
      <div class="dropdown3 navbar-header">
          <button class="dropbtn3 navbar-brand"><a>Student</a></button>
  <div class="dropdown-content3 navbar-brand">
    <a href="application1.jsp">New Application</a>
    <a href="status_check.jsp">Check Status</a>
    <a href="stud_feed.jsp">Room Feedback</a>
  </div>
</div>
      <a class="navbar-brand" href="home.jsp#contact">Contact Us</a>
      <a class="navbar-brand" href="feedback.jsp">Feedback</a>
       </div>
  </div>
</nav>
  
</header><%
            }
            else
            {
                %> <header>
  <div class="col-xs-12">
      <div class="col-lg-4 col-sm-12 text-center col-md-3"><a href="admin_view.jsp"> <img  alt="140x140" style="width: 240px; height: 170px;" src="img/logo.JPG" data-holder-rendered="true"></a></div>
    <h3 class="text-center">JSS Mahavidyapeetha</h3>
    <h1 class="text-center">Sri Jayachamarajendra College of Engineering </h1>
    <h2 class="text-center">Hostels</h2>
    <p>&nbsp;</p>
</div>
<nav>
  <div class="container-fluid"> 
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="admin_view.jsp">Home</a>
      <div class="dropdown3 navbar-header">
          <button class="dropbtn3 navbar-brand"><a>Allotment</a></button>
  <div class="dropdown-content3 navbar-brand">
    <a href="selection_list.jsp">Allot Room</a>
    <a href="free_allotment.jsp">Delete Student</a>
    <a href="abc.jsp">Room Search</a>
    <a href="student_search.jsp">Student Search</a>
    <a href="availability.jsp">Room Availability</a>
    <a href="change_room.jsp">Change Room</a>
    <a href="add_room.jsp">Add Room</a>
  </div>
</div>
      <div class="dropdown3 navbar-header">
          <button class="dropbtn3 navbar-brand"><a>Inventory</a></button>
  <div class="dropdown-content3 navbar-brand">
    <a href="add_bill_details.jsp">Add Bill</a>
    <a href="add_fund.jsp">Add Funds</a>
    <a href="view_bill.jsp">View Bills</a>
    <a href="view_fund.jsp">View Fund</a>
    <a href="view_fund_tr.jsp">View Fund Transactions</a>
  </div>
</div>
      <div class="dropdown3 navbar-header">
          <button class="dropbtn3 navbar-brand"><a>Mess</a></button>
  <div class="dropdown-content3 navbar-brand">
    <a href="add_item.jsp">Add Item</a>
    <a href="item_to_stock.jsp">Add to Stock</a>
    <a href="View_stock.jsp">View Stock</a>
    <a href="count.jsp">Todays Details</a>
  </div>
</div>
      <a class="navbar-brand" href="view_application.jsp">Applications</a>
            <div class="dropdown3 navbar-header">
          <button class="dropbtn3 navbar-brand"><a>Feedback</a></button>
  <div class="dropdown-content3 navbar-brand">
    <a href="view_feedback.jsp">Site Feedback</a>
    <a href="view_stud_feed.jsp">Student Feedback</a>
  </div>
</div>
      <a class="navbar-brand" href="logout.jsp">Logout</a>
       </div>
  </div>
</nav>
  
</header><%
            }
 %>