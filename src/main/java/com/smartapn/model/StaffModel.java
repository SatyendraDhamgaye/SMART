/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.model;

import com.smartapn.DB.SmartApnDB;
import com.smartapn.beans.Staffbeans;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nikhil
 */
public class StaffModel {
    static String message = null;
    static String sql;
    PreparedStatement ps = null;
    Connection con = SmartApnDB.conectdb();
    public void insert(Staffbeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            sql="insert into staff(first_name,last_name,email,joiningdate,password,c_password,designation,department,gender,mobile_no,birth_date,address,education,photo) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            ps = con.prepareStatement(sql); 
            ps.setString(1,beans.getFirstName());
            ps.setString(2,beans.getLastName());
            ps.setString(3,beans.getEmail());
            ps.setString(4,beans.getJoiningDate());
            ps.setString(5,beans.getPassword());
            ps.setString(6,beans.getCpassword());
            ps.setString(7,beans.getDesignation());
            ps.setString(8,beans.getDepartment());
            ps.setString(9,beans.getGender());
            ps.setInt(10,beans.getMobileNumber());
            ps.setString(11,beans.getBirthDate());
            ps.setString(12,beans.getAddress());
            ps.setString(13,beans.getEducation());
            ps.setString(14,beans.getPhoto());
            int s = ps.executeUpdate();
            if(s==1){
              message="Data inserted sucessfully"; 
            }
            
        } catch (SQLException e) {
             System.out.println("com.smartapn.model.staff.insert() : " + e.getMessage());
            message = e.getMessage();
        }finally{
            
          response.sendRedirect("add_staff.jsp?message=" + message);
        }
        
        
    }
    
    public void delete(Staffbeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
    
    sql="delete from staff where id = ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1,beans.getId());
            int r = ps.executeUpdate();
            if (r >= 1) {
                message="Deleted Succesfully";
            }
        } catch (SQLException e) {
            message="Unable to delete because of :"+e.getMessage();
        }finally{
            response.sendRedirect("all_staffs.jsp?message="+message);

        }
    
    
    }
    
    public void update(Staffbeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            sql="update staff set first_name=?, last_name=?,email=?,joiningdate=?,password=?,c_password=?,designation=?,department=?,gender=?,mobile_no=?,birth_date=?,address=?,education=?,photo=? where id = ?";
                    
            ps = con.prepareStatement(sql); 
            ps.setString(1,beans.getFirstName());
            ps.setString(2,beans.getLastName());
            ps.setString(3,beans.getEmail());
            ps.setString(4,beans.getJoiningDate());
            ps.setString(5,beans.getPassword());
            ps.setString(6,beans.getCpassword());
            ps.setString(7,beans.getDesignation());
            ps.setString(8,beans.getDepartment());
            ps.setString(9,beans.getGender());
            ps.setInt(10,beans.getMobileNumber());
            ps.setString(11,beans.getBirthDate());
            ps.setString(12,beans.getAddress());
            ps.setString(13,beans.getEducation());
            ps.setString(14,beans.getPhoto());
            ps.setInt(15,beans.getId());
            int c = ps.executeUpdate();
            if (c >= 1) {
                message="Updated Succesfully";
            }
        } catch (SQLException e) {
            message="Unable to Update because of :"+e.getMessage();
        }finally{
            response.sendRedirect("all_staffs.jsp?message="+message);

        }
        }
        
    
    
    
    
    
    
}
