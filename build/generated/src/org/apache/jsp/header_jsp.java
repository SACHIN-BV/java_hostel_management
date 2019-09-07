package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

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
