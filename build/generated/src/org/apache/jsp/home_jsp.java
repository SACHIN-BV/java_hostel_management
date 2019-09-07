package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<title>Home</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write(' ');
 HttpSession nsession = request.getSession(false);
             String userid = (String)session.getAttribute("user_name");
            if(userid==null)
            {
               
      out.write(" <header>\n");
      out.write("  <div class=\"col-xs-12\">\n");
      out.write("      <div class=\"col-lg-4 col-sm-12 text-center col-md-3\"><a href=\"home.jsp\"><img  alt=\"140x140\" style=\"width: 240px; height: 170px;\" src=\"img/logo.JPG\" data-holder-rendered=\"true\"></a></div>\n");
      out.write("    <h3 class=\"text-center\">JSS Mahavidyapeetha</h3>\n");
      out.write("    <h1 class=\"text-center\">Sri Jayachamarajendra College of Engineering </h1>\n");
      out.write("    <h2 class=\"text-center\">Hostels</h2>\n");
      out.write("    <p>&nbsp;</p>\n");
      out.write("</div>\n");
      out.write("<nav>\n");
      out.write("  <div  class=\"container-fluid\"> \n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\"> <span class=\"sr-only\"></span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"home.jsp\">Home</a>\n");
      out.write("      <a class=\"navbar-brand\" href=\"home.jsp#about\">About Us</a>\n");
      out.write("      <div class=\"dropdown3 navbar-header\">\n");
      out.write("          <button class=\"dropbtn3 navbar-brand\"><a>Student</a></button>\n");
      out.write("  <div class=\"dropdown-content3 navbar-brand\">\n");
      out.write("    <a href=\"application1.jsp\">New Application</a>\n");
      out.write("    <a href=\"status_check.jsp\">Check Status</a>\n");
      out.write("    <a href=\"stud_feed.jsp\">Room Feedback</a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("      <a class=\"navbar-brand\" href=\"home.jsp#contact\">Contact Us</a>\n");
      out.write("      <a class=\"navbar-brand\" href=\"feedback.jsp\">Feedback</a>\n");
      out.write("       </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("  \n");
      out.write("</header>");

            }
            else
            {
                
      out.write(" <header>\n");
      out.write("  <div class=\"col-xs-12\">\n");
      out.write("      <div class=\"col-lg-4 col-sm-12 text-center col-md-3\"><a href=\"admin_view.jsp\"> <img  alt=\"140x140\" style=\"width: 240px; height: 170px;\" src=\"img/logo.JPG\" data-holder-rendered=\"true\"></a></div>\n");
      out.write("    <h3 class=\"text-center\">JSS Mahavidyapeetha</h3>\n");
      out.write("    <h1 class=\"text-center\">Sri Jayachamarajendra College of Engineering </h1>\n");
      out.write("    <h2 class=\"text-center\">Hostels</h2>\n");
      out.write("    <p>&nbsp;</p>\n");
      out.write("</div>\n");
      out.write("<nav>\n");
      out.write("  <div class=\"container-fluid\"> \n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\"> <span class=\"sr-only\"></span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"admin_view.jsp\">Home</a>\n");
      out.write("      <div class=\"dropdown3 navbar-header\">\n");
      out.write("          <button class=\"dropbtn3 navbar-brand\"><a>Allotment</a></button>\n");
      out.write("  <div class=\"dropdown-content3 navbar-brand\">\n");
      out.write("    <a href=\"selection_list.jsp\">Allot Room</a>\n");
      out.write("    <a href=\"free_allotment.jsp\">Delete Student</a>\n");
      out.write("    <a href=\"abc.jsp\">Room Search</a>\n");
      out.write("    <a href=\"student_search.jsp\">Student Search</a>\n");
      out.write("    <a href=\"availability.jsp\">Room Availability</a>\n");
      out.write("    <a href=\"change_room.jsp\">Change Room</a>\n");
      out.write("    <a href=\"add_room.jsp\">Add Room</a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("      <div class=\"dropdown3 navbar-header\">\n");
      out.write("          <button class=\"dropbtn3 navbar-brand\"><a>Inventory</a></button>\n");
      out.write("  <div class=\"dropdown-content3 navbar-brand\">\n");
      out.write("    <a href=\"add_bill_details.jsp\">Add Bill</a>\n");
      out.write("    <a href=\"add_fund.jsp\">Add Funds</a>\n");
      out.write("    <a href=\"view_bill.jsp\">View Bills</a>\n");
      out.write("    <a href=\"view_fund.jsp\">View Fund</a>\n");
      out.write("    <a href=\"view_fund_tr.jsp\">View Fund Transactions</a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("      <div class=\"dropdown3 navbar-header\">\n");
      out.write("          <button class=\"dropbtn3 navbar-brand\"><a>Mess</a></button>\n");
      out.write("  <div class=\"dropdown-content3 navbar-brand\">\n");
      out.write("    <a href=\"add_item.jsp\">Add Item</a>\n");
      out.write("    <a href=\"item_to_stock.jsp\">Add to Stock</a>\n");
      out.write("    <a href=\"View_stock.jsp\">View Stock</a>\n");
      out.write("    <a href=\"count.jsp\">Todays Details</a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("      <a class=\"navbar-brand\" href=\"view_application.jsp\">Applications</a>\n");
      out.write("            <div class=\"dropdown3 navbar-header\">\n");
      out.write("          <button class=\"dropbtn3 navbar-brand\"><a>Feedback</a></button>\n");
      out.write("  <div class=\"dropdown-content3 navbar-brand\">\n");
      out.write("    <a href=\"view_feedback.jsp\">Site Feedback</a>\n");
      out.write("    <a href=\"view_stud_feed.jsp\">Student Feedback</a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("      <a class=\"navbar-brand\" href=\"logout.jsp\">Logout</a>\n");
      out.write("       </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("  \n");
      out.write("</header>");

            }
 
      out.write("\n");
      out.write("<section>\n");
      out.write("<div class=\"row\"> </div>\n");
      out.write("  <div class=\"container \">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div>\n");
      out.write("          <div><a href=\"img/home.jpg\"> <img src=\"img/home.jpg\"  alt=\"home\"  style=\"width: 100%; height: 100%;\" data-holder-rendered=\"true\"></a></div>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("</div>\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div id=\"about\" class=\"col-lg-12 page-header text-center col-md-2\">\n");
      out.write("        <h2>About</h2>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("     <div class=\"col-xs-12\">\n");
      out.write("         <div  class=\"col-lg-4 col-sm-12 text-center col-md-4\"> <a href=\"img/gate.jpg\"><img  alt=\"140x140\" style=\"width: 250px; height: 170px;\" src=\"img/gate.jpg\" data-holder-rendered=\"true\"></a></div>\n");
      out.write("    <div  class=\"col-lg-4 col-sm-12 text-center col-md-4\"><a href=\"img/sidegate.jpg\"> <img  alt=\"140x140\" style=\"width: 250px; height: 170px;\" src=\"img/sidegate.jpg\" data-holder-rendered=\"true\"></a></div>\n");
      out.write("    <div  class=\"col-lg-4 col-sm-12 text-center col-md-4\"><a href=\"img/road.jpg\"> <img  alt=\"140x140\" style=\"width: 250px; height: 170px;\" src=\"img/road.jpg\" data-holder-rendered=\"true\"></a></div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"row\">\n");
      out.write("<div>\n");
      out.write(" <div class=\"row\">\n");
      out.write("      <div id=\"contact\" class=\"col-lg-12 page-header text-center col-md-2\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("        <blockquote>\n");
      out.write("          <p>SJCE Hostels Mysore, located at the SJCE Campus in Mysore, just 10 mins walking distance within the Campus, looks forward to host you!<br>We provide facilities for about 500 boys and 210 girls. The boys' hostel is located in the college premises, in H Block, L Block, M Block, PG Block and GH Block, all located on the north-end of the campus. We laso provde mess facilities for the students along with the separate TV room and reading room. The girls hostel is located on the south-end of the campus.<br>Seat allotments are on the basis of merit and then on other factors like students from remote places. But further preference will be by 'first-come-first-served' among the allotments considering the limited seats in the hostel.<br>SJCE being an autonomous institution has laid strict rules and regulations to curb the menace of ragging as directed by the hon’ble Supreme Court of India, University Grants Commission (UGC) and the All India Council of Technical Education. (AICTE)</p>\n");
      out.write("        </blockquote>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("     <div class=\"row\">\n");
      out.write("      <div id=\"contact\" class=\"col-lg-12 page-header text-center col-md-2\">\n");
      out.write("        <h2>Contact Us</h2>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"row\">\n");
      out.write("<div>\n");
      out.write("        <blockquote>\n");
      out.write("          <h3>Sri Jayachamarajendra College of Engineering</h3>\n");
      out.write("          <h4>Sri Jayachamarajendra College of Engineering, <br>JSS TI Campus,<br> Manasagangothri, <br>Mysuru 570006</h4>\n");
      out.write("          <h4>0821- 2548285, 2548286, 2548287</h4>\n");
      out.write("          <h4>admn@sjce.ac.in</h4>\n");
      out.write("        </blockquote>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("</section>\n");
      out.write("<div class=\"well\"> </div>\n");
      out.write("\n");
      out.write("<!-- FOOTER -->\n");
      out.write("<div class=\"container\">\n");
      out.write("  <div class=\"row\"> </div>\n");
      out.write("</div>\n");
 String li="",fo_name="";
    
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

      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("  <div class=\"row\"> </div>\n");
      out.write("</div>\n");
      out.write("<footer class=\"text-center\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col-xs-12\">\n");
      out.write("          <p>Copyright © JSS MAHAVIDYAPEETHA. All rights reserved.</p><h5 style=\"align-left:\"><a href=\"");
      out.print(li);
      out.write('"');
      out.write('>');
      out.print(fo_name);
      out.write("</a></h5>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</footer>\n");
      out.write("</body>");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
