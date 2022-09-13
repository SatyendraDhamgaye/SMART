/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.controller;

import com.smartapn.beans.Staffbeans;
import com.smartapn.model.StaffModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nikhil
 */
@WebServlet(name = "StaffController", urlPatterns = {"/StaffController"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100)
public class StaffController extends HttpServlet {

    StaffModel staffmodel = new StaffModel();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        StaffModel model = new StaffModel();
        Staffbeans beans = new Staffbeans();
         String action = request.getParameter("action");
        if(action.equals("insert")){
        
            beans.setFirstName(request.getParameter("txtFirstName"));
            beans.setLastName(request.getParameter("txtLastName"));
            beans.setEmail(request.getParameter("txtEmail"));
            beans.setJoiningDate(request.getParameter("txtJoiningDate"));
            beans.setPassword(request.getParameter("txtPassword"));
            beans.setCpassword(request.getParameter("txtCPassword"));
            beans.setDesignation(request.getParameter("txtdesignation"));
            beans.setDepartment(request.getParameter("txtDepartment"));
            beans.setGender(request.getParameter("txtGender"));
            beans.setMobileNumber(Integer.parseInt(request.getParameter("txtMobileNo")));
            beans.setBirthDate(request.getParameter("txtDob"));
            beans.setAddress(request.getParameter("txtAddress"));
            beans.setEducation(request.getParameter("txtEducation"));
            beans.setPhoto("Photo");
            model.insert(beans, request, response);
        }else if(action.equals("delete"))
       {
           beans.setId(Integer.parseInt(request.getParameter("id")));
           model.delete(beans, request, response);
       }else if(action.equals("update")){
            beans.setId(Integer.parseInt(request.getParameter("id")));
            beans.setFirstName(request.getParameter("txtFirstName"));
            beans.setLastName(request.getParameter("txtLastName"));
            beans.setEmail(request.getParameter("txtEmail"));
            beans.setJoiningDate(request.getParameter("txtJoiningDate"));
            beans.setPassword(request.getParameter("txtPassword"));
            beans.setCpassword(request.getParameter("txtCPassword"));
            beans.setDesignation(request.getParameter("txtdesignation"));
            beans.setDepartment(request.getParameter("txtDepartment"));
            beans.setGender(request.getParameter("txtGender"));
            beans.setMobileNumber(Integer.parseInt(request.getParameter("txtMobileNo")));
            beans.setBirthDate(request.getParameter("txtDob"));
            beans.setAddress(request.getParameter("txtAddress"));
            beans.setEducation(request.getParameter("txtEducation"));
            beans.setPhoto("Photo");
        model.update(beans, request, response);   
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
