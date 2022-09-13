/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.controller;


import com.smartapn.beans.Staffbeans;

import com.smartapn.model.StaffLoginModel;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nikhil
 */
@WebServlet(name = "StaffLoginController", urlPatterns = {"/StaffLoginController"})
public class StaffLoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String action = null;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         response.setContentType("text/html;charset=UTF-8");
        Staffbeans beans = new Staffbeans();
        StaffLoginModel model = new StaffLoginModel();
        
        action = request.getParameter("action");
        if (action.equals("StaffLogin")) {
           beans.setEmail(request.getParameter("email"));
           beans.setPassword(request.getParameter("pass"));
           if(model.doLogin(beans, request, response))
           {
             response.sendRedirect("dashboard3.jsp");  
           }
          else
           {
               response.sendRedirect("incorrect_login.jsp?message=incorrect login");
           }
        }
        
         if (action.equals("HODLogin")) {
           beans.setEmail(request.getParameter("email"));
           beans.setPassword(request.getParameter("pass"));
           if(model.doHODLogin(beans, request, response))
           {
             response.sendRedirect("dashboard2.jsp");  
           }
          else
           {
               response.sendRedirect("incorrect_login.jsp?message=incorrect login");
           }
        }
        
        
        
       
            }
        
        
    


    public StaffLoginController() {
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
