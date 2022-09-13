/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.controller;

import com.smartapn.beans.StudentBeans;
import com.smartapn.model.StudentModel;
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
@WebServlet(name = "StudentController", urlPatterns = {"/StudentController"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100)
public class StudentController extends HttpServlet {

    StudentModel studentmodel = new StudentModel();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        StudentModel model = new StudentModel();
        StudentBeans beans = new StudentBeans();
        String action = request.getParameter("action");
        
        if(action.equals("insert")){
        beans.setFirstname(request.getParameter("txtFirstName"));
        beans.setLastname(request.getParameter("txtLastName"));
        beans.setEnrollmentno(Integer.parseInt(request.getParameter("txtEnrollNo")));
        beans.setAddmissionno(Integer.parseInt(request.getParameter("txtAdmissionNo")));
        beans.setEmail(request.getParameter("txtEmail"));
        beans.setRegistrationdate(request.getParameter("txtRegisDate"));
        beans.setDepartment(request.getParameter("txtDept"));
        beans.setSemester(request.getParameter("txtSem"));
        beans.setQualification(request.getParameter("txtQualification"));
        beans.setGender(request.getParameter("txtGender"));
        beans.setMobileNo(Integer.parseInt(request.getParameter("txtMobileNo")));
        beans.setParentrName(request.getParameter("txtParentName"));
        beans.setParentPhNo(Integer.parseInt(request.getParameter("txtParentPhNo")));
        beans.setDob(request.getParameter("txtDob"));
        beans.setBloodgroup(request.getParameter("txtBloodGroup"));
        beans.setAddress(request.getParameter("txtAddress"));
        beans.setStuPhoto("photo");
            
        model.insert(beans, request, response);
        }else if(action.equals("delete"))
       {
           beans.setId(Integer.parseInt(request.getParameter("id")));
           model.delete(beans, request, response);
       }else if(action.equals("update")){
        beans.setId(Integer.parseInt(request.getParameter("id")));
        beans.setFirstname(request.getParameter("txtFirstName"));
        beans.setLastname(request.getParameter("txtLastName"));
        beans.setEnrollmentno(Integer.parseInt(request.getParameter("txtEnrollNo")));
        beans.setAddmissionno(Integer.parseInt(request.getParameter("txtAdmissionNo")));
        beans.setEmail(request.getParameter("txtEmail"));
        beans.setRegistrationdate(request.getParameter("txtRegisDate"));
        beans.setDepartment(request.getParameter("txtDept"));
        beans.setSemester(request.getParameter("txtSem"));
        beans.setQualification(request.getParameter("txtQualification"));
        beans.setGender(request.getParameter("txtGender"));
        beans.setMobileNo(Integer.parseInt(request.getParameter("txtMobileNo")));
        beans.setParentrName(request.getParameter("txtParentName"));
        beans.setParentPhNo(Integer.parseInt(request.getParameter("txtParentPhNo")));
        beans.setDob(request.getParameter("txtDob"));
        beans.setBloodgroup(request.getParameter("txtBloodGroup"));
        beans.setAddress(request.getParameter("txtAddress"));
        beans.setStuPhoto("Photo");
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
