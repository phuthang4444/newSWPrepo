/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package thantp.controller;

import ThangTP.reg.RegDAO;
import ThangTP.reg.RegYard;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author phuth
 */
@WebServlet(name = "SearchBookedYardServlet", urlPatterns = {"/SearchBookedYardServlet"})
public class SearchBookedYardServlet extends HttpServlet {
private final String Error = "login.jsp";
private final String Success = "main.jsp";
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
        PrintWriter out = response.getWriter();
        String url = Error;
        try {
            String search = request.getParameter("yardName");
            RegDAO dao = new RegDAO();
            List<RegYard> list = dao.searchYardByName(search);
            if(!list.isEmpty()){
                request.setAttribute("LIST_YARD", list);
                url = Success;
            }
//            if(search==null){
//                List<RegBooked> list = dao.getAllListBooking();
//               if(!list.isEmpty()){
//                request.setAttribute("LIST_BOOKED_YARD", list);
//                url = Success;
//               } 
//            }else{
//            List<RegBooked> list = dao.getListBooking(search);
//            if(!list.isEmpty()){
//                request.setAttribute("LIST_BOOKED_YARD", list);
//                url = Success;
//            }
//            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            request.getRequestDispatcher(url).forward(request, response);
            out.close();
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
