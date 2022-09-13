/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.model;

import com.smartapn.DB.SmartApnDB;
import com.smartapn.beans.LoginBeans;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nikhil
 */
public class LoginModel {

    static String message = null;
    static String sql;
    PreparedStatement ps = null;

    Connection con = SmartApnDB.conectdb();

    public void insert(LoginBeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {

        
        try {
            sql = "insert into login(Login_id,Username,Password,Email,Role,Photo) values(?,?,?,?,?,?)";
        ps = con.prepareStatement(sql);
            ps.setInt(1, beans.getLogin_id());
            ps.setString(2, beans.getUsername());
            ps.setString(3, beans.getPassword());
            ps.setString(4, beans.getEmail());
            ps.setString(5, beans.getRole());
            ps.setString(6, beans.getPhoto());
            int rc = ps.executeUpdate();
            if(rc==1){
              message="Data inserted sucessfully"; 
            }
        } catch (SQLException e) {
            System.out.println("com.smartapn.model.student.insert() : " + e.getMessage());
            message = e.getMessage();
        }finally{
            
          response.sendRedirect("sign_up.jsp?message=" + message);
        }

    }

    public void update(LoginBeans beans, HttpServletRequest request, HttpServletResponse response) {

    }

}
