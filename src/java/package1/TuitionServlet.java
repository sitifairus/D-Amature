/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myPackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user8
 */
@WebServlet(name = "TuitionServlet", urlPatterns = {"/TuitionServlet"})
public class TuitionServlet extends HttpServlet {

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
            
            //read data from tiution.html
                  
            int a = Integer.parseInt(request.getParameter("aasTextBox")) ;
            int e = Integer.parseInt (request.getParameter("eslTextBox")) ;
            String type=(String)request.getParameter("Rate");
             
            //calculate total pay
            double fee;
                    
            if("0".equals(type))
                fee=(a*120)+(e*75);
            
            else if ("10".equals(type))
                fee=((a*120)+(e*75)*0.90);
            
            else if ("20".equals(type))
                fee=((a*120)+(e*75)*0.80);
            
            else
                fee=((a*120)+(e*75)*0.70);
          
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Tuition Calculator</title>");            
            out.println("</head>");
            out.println("<h1> Summary : </h1>\n");
            out.println("<h3> No of AAS Subject Taken : " + a + "</h3>");
            out.println("<h3> No of ESL Subject Taken : " + e + "</h3>");
            out.println("<h3> Discount Awarded : " + type + " %</h3>");
            out.println("<h3> Total Fees : $" + fee + "</h3>");
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
