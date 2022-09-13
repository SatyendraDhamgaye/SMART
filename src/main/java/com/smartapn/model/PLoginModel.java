package com.smartapn.model;


import com.smartapn.beans.PLoginBeans;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PLoginModel {
    static String message = null;
    HttpSession session = null;
   public String s;
    public void insert(PLoginBeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
    session = request.getSession();
        try (PrintWriter out = response.getWriter()){
            if(beans.getName().equals("admin") && beans.getPass().equals("admin")){
                session.setAttribute("first_name", "admin");
                    session.setAttribute("page", "dashboard1");
                    
       response.sendRedirect("dashboard1.jsp");
                     
               
                
            }else{
               s="user";
               response.sendRedirect("incorrect_login.jsp"); 
            }
        } catch (Exception e) {
            System.out.println("com.smartapn.model.plogin.insert() : " + e.getMessage());
            message = e.getMessage();
        }
    
    
    }
    
    
}
