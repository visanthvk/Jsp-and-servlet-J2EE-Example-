import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Date;
/**
 *
 * 
 */
public class adminservlet extends HttpServlet {

     private Connection cn = null;
    public void init(ServletConfig sc) throws ServletException
    {
        
        try
        {
            super.init(sc);
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/traindb","root","");
        }
        catch (Exception ex)
        {
            System.out.println(ex);
        } 
    }
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            try{
                String rpassword = null;
                Statement stmt = cn.createStatement();
                String uid=request.getParameter("uid");
                String password=request.getParameter("password");
                String query ="select * from adminpassword where uid='"+uid+"'";
                ResultSet rs = stmt.executeQuery(query);
                while(rs.next())
                {
                   rpassword = rs.getString("password");
                }
                if(rpassword.equals(password)){ 
                    RequestDispatcher dispatcher = request.getRequestDispatcher("addtrain.html");
                 dispatcher.forward( request, response );
                    /*
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");            
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<a href="+"addtrain.html"+">Click here</a>");
                    out.println("</body>");
                    out.println("</html>");*/
                }
                 else
                 {
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Error in Credentials</title>");            
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<h3>Warning..!!</h3>");
                    out.println("<p>Please Enter a Valid Credentials Mr./Ms."+uid+"</p>");
                    out.println("</body>");
                    out.println("</html>");
                  }
            }
                catch(Exception ex){System.out.println(ex);}
}   
     public void destroy()
       {
          try
          {
             if (cn!=null) 
             {
                 cn.close();
             }
          } catch (Exception ex) {
            System.out.println(ex);
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