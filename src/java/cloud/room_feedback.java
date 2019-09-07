/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cloud;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Akshay
 */
public class room_feedback extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int room_n=0;
            
          String sr_no=request.getParameter("sr_no");
        String room_no=request.getParameter("room_no");
        String feedback=request.getParameter("feedback");
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_hostel","root","ak47");
         Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from room_allotment where sr_no='"+sr_no+"' and room_no="+room_no+"");
        if(rs.next())
             
        {
        
        String blocka=rs.getString(1);
        String namea=rs.getString(3);
        
      
        
        
         stmt.execute("insert into stud_feed values('"+sr_no+"','"+namea+"','"+blocka+"',"+room_no+",'"+feedback+"')");
         out.println("<script type=\"text/javascript\">");
             out.println("alert('Thank You for the Feedback');");
             out.println("location='home.jsp';");
             out.println("</script>");
        
        }
        else{
            out.println("<script type=\"text/javascript\">");
             out.println("alert('Student does not exist');");
             out.println("location='stud_feed.jsp';");
             out.println("</script>");
            
        }
        }catch(Exception e){
            out.println(e);
        }
        
            
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
        processRequest(request, response);
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
        processRequest(request, response);
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
