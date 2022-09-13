package com.smartapn.model;


import com.smartapn.DB.SmartApnDB;

import com.smartapn.beans.Staffbeans;
import java.io.IOException;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class StaffLoginModel {
    static String message = null;
   static Connection con = SmartApnDB.conectdb();
   static Statement st = null;
   static String sql = null;
    
   static ResultSet rs = null;
  // static PreparedStatement ps = null;
  // static CallableStatement cs = null;
   static HttpSession session = null;

    public static boolean doLogin(Staffbeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
      
        session = request.getSession();
        String m = beans.getEmail();
        sql = "select * from staff where email = '"+m+"'";
        try {
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                if (beans.getEmail().equals(rs.getString("email")) && beans.getPassword().equals(rs.getString("password"))) {
                   
                    session.setAttribute("first_name", rs.getString("first_name"));
                    session.setAttribute("last_name", rs.getString("last_name"));
                    session.setAttribute("role", rs.getString("designation"));
                    session.setAttribute("page", "dashboard3");
                    return true;
                } 
             else {
                    return false;
                //response.sendRedirect("page-500.jsp?message=incorrect login");
            }
            }
        } catch (SQLException e) {
            System.out.println("Exception while login : " + e.getMessage());
        }
        return false;
    }

    public static boolean doHODLogin(Staffbeans beans, HttpServletRequest request, HttpServletResponse response) {
    
    session = request.getSession();
        String m = beans.getEmail();
        String d = "hod";
        sql = "select * from staff where email = '"+m+"' and designation='"+d+"'";
        try {
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                if (beans.getEmail().equals(rs.getString("email")) && beans.getPassword().equals(rs.getString("password"))) {
                   
                    session.setAttribute("first_name", rs.getString("first_name"));
                    session.setAttribute("last_name", rs.getString("last_name"));
                    session.setAttribute("role", rs.getString("designation"));
                    session.setAttribute("page", "dashboard2");
                    return true;
                } 
             else {
                    return false;
                //response.sendRedirect("page-500.jsp?message=incorrect login");
            }
            }
        } catch (SQLException e) {
            System.out.println("Exception while login : " + e.getMessage());
        }
        return false;
    }
    
   
    
    
    
    
}
