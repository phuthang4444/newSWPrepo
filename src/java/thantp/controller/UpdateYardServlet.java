/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package thantp.controller;

import ThangTP.reg.RegDAO;
import ThangTP.reg.RegYard;
import ThangTP.reg.RegYardError;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "UpdateYardServlet", urlPatterns = {"/UpdateYardServlet"})
public class UpdateYardServlet extends HttpServlet {
private final String ADD_FAIL = "updateyard.jsp";
private final String ADD_SUCCESS = "main.jsp";
        
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
        String url = ADD_FAIL;
        try{
            int yardID = Integer.parseInt(request.getParameter("yardId"));
            String yardUserID = request.getParameter("yardOwnerId");
            String yardName = request.getParameter("yardName");
            String yardAddress = request.getParameter("address");
            String yardDistrict = request.getParameter("district");
            int yardMorningPrice = Integer.parseInt(request.getParameter("updatePriceday"));
            int yardNightPrice =Integer.parseInt( request.getParameter("updatePricenight"));
            boolean check = true;
            RegYardError yardError = new RegYardError();
            if(check){
                RegDAO dao = new RegDAO();
                RegYard yard = new RegYard(yardID, yardUserID, yardName, "", yardAddress, yardDistrict, yardMorningPrice, yardNightPrice, false);
              
                boolean checkDup = dao.CheckDuplicateYardID(yardID);
                if(checkDup){
                    yardError.setYardIDError("Yard ID already existed !");
                    request.setAttribute("YARD_ERROR", yardError);
                }else{
                    boolean checkAdd = dao.addYard(yard);
                    if(checkAdd){
                        request.setAttribute("YARD_INFO", yard);
                        url = ADD_SUCCESS;
                    }else{
                        yardError.setYardMessError("Cannot add this yard!");
                        request.setAttribute("YARD_ERROR", yardError);
                    }
                }
            }else{
                request.setAttribute("YARD_ERROR", yardError);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
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
