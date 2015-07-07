/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TuitionCalculator;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
@WebServlet(name = "TuitionCalculator", urlPatterns = {"/TuitionCalculator"})
public class TuitionCalculator extends HttpServlet {

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
            
            String AAS = request.getParameter("aasTextBox");
            String ESL = request.getParameter("eslTextBook");
            String a = request.getParameter("discountRateSelectBox");
            
            
            double value1 = Double.parseDouble(AAS);
            double value2 = Double.parseDouble(ESL);
            double total;
            double discountPrice;
            
            
            total = (value1 * 120) + ( value2 * 75);
            
            if (a.equals("0"))
            {
                out.println("Your tuition is:" + total+ "USD");
            }
            
            else if(a.equals("10")) 
            {
                discountPrice = total * (10/100);
                out.println("Your tuition is:" + discountPrice + "USD");
            }
            
            else if(a.equals("20"))
            {
                discountPrice = total * (20/100);
                out.println("Your Tuition is:" + discountPrice + "USD");
            }
            
            else if(a.equals("50"))
            {
                discountPrice = total * (50/100);
                out.println("Your Tuition is:" + discountPrice + "USD");
            }
            
            else
            {
                out.println("Select Student Type");    
            }
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TuitionCalculator</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TuitionCalculator at " + request.getContextPath() + "</h1>");
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
