package package1;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author asus
 */
@WebServlet(urlPatterns = {"/formServlet"})
public class formServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            
            //get data
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String zip = request.getParameter("zip");
            String[] preference = request.getParameterValues("musicalPreference");
            String decade = request.getParameter("select decade");
            String days = request.getParameter("days");
            String day = request.getParameter("select day");
            String[] place = request.getParameterValues("place");
            String comments = request.getParameter("comments");
            String subscribe = request.getParameter("subscribe");
   
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet formServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("Name : "+name);
            out.println("<br>Email : "+email);
            out.println("<br>Zip : "+zip);
            out.println("<br>Music preference : ");
            for(int i =0 ;i<preference.length;i++)
            {
                out.println(preference[i]+" ,");
            }
            out.println("<br>Decade : "+decade);
            out.println("<br>Favorite day to listen : "+days);
            out.println("<br>I listen to WARNARadio "+day);
            out.println("<br>Prefer to listen ");
             for(int i =0 ;i<place.length;i++)
            {
                out.println(place[i]+" ,");
            }
            out.println("<br>Additional comments : "+comments);
            
            out.println("</body>");
            out.println("</html>");
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
