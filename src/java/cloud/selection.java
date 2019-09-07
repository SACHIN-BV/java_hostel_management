/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cloud;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Akshay
 */
public class selection extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        int status=1,a = 0,b=0,c=0;
        String name=request.getParameter("name");
        String sr_no=request.getParameter("sr_no");
        String mobile=request.getParameter("mobile");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        int allot_final=Integer.parseInt(request.getParameter("allot_final"));
        String app_no=request.getParameter("app_no");
        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.jdbc.Driver");
             Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
             Statement stmt=con.createStatement();
             if(allot_final==3){
             stmt.execute("delete from application where no='"+app_no+"'");
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Application Rejected');");
             out.println("location='view_application.jsp';");
             out.println("</script>");
             }
             else if(allot_final==2) 
             {
             stmt.executeUpdate("update application set name='"+name+"',sr_no='"+sr_no+"',mobile_no='"+mobile+"',email='"+email+"',address='"+address+"',status=2 where no='"+app_no+"'");
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Application accepted');");
             out.println("location='view_application.jsp';");
             out.println("</script>");
             }
            
            out.println("</body>");
            out.println("</html>"); 
        }catch(Exception e)
               {  
               }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(selection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(selection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(selection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(selection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
