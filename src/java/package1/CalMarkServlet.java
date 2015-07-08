/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package package1;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author on
 */
@WebServlet(name = "CalMarkServlet", urlPatterns = {"/CalMarkServlet"})
public class CalMarkServlet extends HttpServlet {

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
            String m = request.getParameter("midterm");
            String f = request.getParameter("final");
            String p = request.getParameter("project");
            String ggrade;
            String result;
            int pnt;
            double midterm=Double.parseDouble(m);
            double fnl=Double.parseDouble(f);
            double prjct=Double.parseDouble(p);
            midterm = midterm/100*30;
            fnl = fnl/100*30;
            prjct = prjct/100*40;
            double mark = midterm+fnl+prjct;
            if(mark<60)
            {
                ggrade="F";
                pnt=0;
                result="Fail";
            }
            else if(mark<70)
            {
                ggrade="D";
                pnt=1;
                result="Pass";
            }
            else if( mark<80)
            {
                ggrade="C";
                pnt=2;
                result="Pass";
            }
            else if( mark<90)
            {
                ggrade="B"; 
                pnt=3;
                result="Pass";
            }
            else
            {
                ggrade="A"; 
                pnt=4;
                result="Pass";
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Result</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Result at " + request.getContextPath() + "</h1>"
                    + "<div>"
                    + "Average : " +mark
                    + "<br>Grade : "+ggrade
                    + "<br>Point : "+pnt
                    + "<br>Result :" +result
                    + "</div>");
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
