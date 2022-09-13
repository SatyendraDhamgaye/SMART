/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.controller;

import com.smartapn.beans.DepartmentBeans;
import com.smartapn.model.DepartmentModel;
import java.io.IOException;
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
@WebServlet(name = "DepartmentController", urlPatterns = {"/DepartmentController"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100)
public class DepartmentController extends HttpServlet {
    DepartmentModel departmentmodel = new DepartmentModel();

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        DepartmentModel model = new DepartmentModel();
        DepartmentBeans beans = new DepartmentBeans();
        String action = request.getParameter("action");
        if(action.equals("insert")){
        beans.setDepartmentName(request.getParameter("txtDeptName"));
        beans.setDepartmentCode(Integer.parseInt(request.getParameter("txtDeptCode")));
        beans.setDepartmentDetails(request.getParameter("txtDeptDetails"));
        beans.setHODID(Integer.parseInt(request.getParameter("txtHodId")));
        beans.setStartDate(request.getParameter("txtStartDate"));
        beans.setStudentCapacity(Integer.parseInt(request.getParameter("txtStudentCapacity")));
        beans.setTotalStaff(Integer.parseInt(request.getParameter("txtTotalStaff")));
        beans.setStaffID(request.getParameter("txtStaffId"));
        beans.setTimeLength(Integer.parseInt(request.getParameter("txtTimeLength")));
        beans.setDeptPrice(Integer.parseInt(request.getParameter("txtDeptPrice")));
        beans.setCoursePhoto("Photo");
        model.insert(beans, request, response);
        }else if(action.equals("delete"))
       {
           beans.setId(Integer.parseInt(request.getParameter("id")));
           model.delete(beans, request, response);
       }else if(action.equals("update")){
        beans.setId(Integer.parseInt(request.getParameter("id")));
        beans.setDepartmentName(request.getParameter("txtDeptName"));
        beans.setDepartmentCode(Integer.parseInt(request.getParameter("txtDeptCode")));
        beans.setDepartmentDetails(request.getParameter("txtDeptDetails"));
        beans.setHODID(Integer.parseInt(request.getParameter("txtHodId")));
        beans.setStartDate(request.getParameter("txtStartDate"));
        beans.setStudentCapacity(Integer.parseInt(request.getParameter("txtStudentCapacity")));
        beans.setTotalStaff(Integer.parseInt(request.getParameter("txtTotalStaff")));
        beans.setStaffID(request.getParameter("txtStaffId"));
        beans.setTimeLength(Integer.parseInt(request.getParameter("txtTimeLength")));
        beans.setDeptPrice(Integer.parseInt(request.getParameter("txtDeptPrice")));
        beans.setCoursePhoto("Photo");
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
