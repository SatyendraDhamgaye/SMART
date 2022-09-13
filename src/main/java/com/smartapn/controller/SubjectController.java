/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.controller;

import com.smartapn.beans.SubjectBeans;
import com.smartapn.model.SubjectModel;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hyodo Ishida
 */
@WebServlet(name = "SubjectController", urlPatterns = {"/SubjectController"})
public class SubjectController extends HttpServlet {

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
        SubjectBeans beans = new SubjectBeans();
        SubjectModel model = new SubjectModel();
        String action = request.getParameter("action");
        
        
        
        if(action.equals("insert")){
            
            beans.setName(request.getParameter("subjectname"));
            beans.setCode(Integer.parseInt(request.getParameter("subjectcode")));
            beans.setDepartment(request.getParameter("txtDept"));
            beans.setSemister(request.getParameter("txtSem"));
            beans.setTeacher(request.getParameter("Subjectteacher"));
            beans.setTeachhours(Integer.parseInt(request.getParameter("teachinghour")));
            beans.setAbbrivation(request.getParameter("Subjectabbrivation"));
            beans.setScheme(request.getParameter("txtScheme"));
            model.insert(beans, request, response);
        }else if(action.equals("delete"))
       {
           beans.setId(Integer.parseInt(request.getParameter("id")));
           model.delete(beans, request, response);
       }else if(action.equals("update")){
            beans.setId(Integer.parseInt(request.getParameter("id")));
            beans.setName(request.getParameter("subjectname"));
            beans.setCode(Integer.parseInt(request.getParameter("subjectcode")));
            beans.setDepartment(request.getParameter("txtDept"));
            beans.setSemister(request.getParameter("txtSem"));
            beans.setTeacher(request.getParameter("Subjectteacher"));
            beans.setTeachhours(Integer.parseInt(request.getParameter("teachinghour")));
            beans.setAbbrivation(request.getParameter("Subjectabbrivation"));
            beans.setScheme(request.getParameter("txtScheme"));
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
