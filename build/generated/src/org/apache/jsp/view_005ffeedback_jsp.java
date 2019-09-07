package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class view_005ffeedback_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<title>Feedback View</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");
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
      out.write("          <button class=\"dropbtn3 navbar-brand\"><a>Applications</a></button>\n");
      out.write("  <div class=\"dropdown-content3 navbar-brand\">\n");
      out.write("    <a href=\"application1.jsp\">New Application</a>\n");
      out.write("    <a href=\"status_check.jsp\">Check Status</a>\n");
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
      out.write("    <a href=\"View_stock.jsp\">View Stock</a>\n");
      out.write("    <a href=\"count.jsp\">Todays Details</a>\n");
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
      out.write("      <a class=\"navbar-brand\" href=\"selection_list.jsp\">Allotment</a>\n");
      out.write("      <a class=\"navbar-brand\" href=\"view_feedback.jsp\">Feedback View</a>\n");
      out.write("      <a class=\"navbar-brand\" href=\"logout.jsp\">Logout</a>\n");
      out.write("       </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("  \n");
      out.write("</header>");

            }
 
      out.write("\n");
      out.write("    <div class=\"well\"> </div>\n");
      out.write("\n");
      out.write("          \n");
      out.write("          <div id=\"edit_form\" class=\"container\">\n");
      out.write("  <div class=\"row\">\n");
      out.write("    <div class=\"col-lg-offset-3 col-xs-12 col-lg-6\">\n");
      out.write("      <div class=\"jumbotron\">\n");
      out.write("        <div class=\"row text-center\">\n");
      out.write("          <div class=\"text-center col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n");
      out.write("            <h2>Feedback View</h2>\n");
      out.write("          </div>\n");
      out.write("            \n");
      out.write("            <form role=\"form\" id=\"feedbackForm\" class=\"text-center\">\n");
      out.write("          <div class=\"text-center col-lg-12\">\n");
      out.write("    <div class=\"form-group\" align=\"left\">\n");
      out.write("        <table style=\"width:100%;\" border=\"1\"><tbody>\n");
      out.write("                <tr>\n");
      out.write("                <th>Name</th>\n");
      out.write("                <th>Contact No</th> \n");
      out.write("                <th>E-mail</th>\n");
      out.write("                <th>Feedback</th>\n");
      out.write("                </tr>\n");
      out.write("          ");

              
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


              
               try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud_hostel","root","ak47");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from feedback order by no");
       while(rs.next())
            {
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                ");

            } 
               }catch(Exception e)
               {   
               }
}
                
      out.write("\n");
      out.write("          </tbody></table></div>\n");
      out.write("          \n");
      out.write("            </div>\n");
      out.write("               </form>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("    ");
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
      out.write("</html>");
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
