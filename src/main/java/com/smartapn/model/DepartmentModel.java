/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.model;

import com.smartapn.DB.SmartApnDB;
import com.smartapn.beans.DepartmentBeans;
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
public class DepartmentModel {
    static String message = null;
    static String sql;
    PreparedStatement ps = null;
    Connection con = SmartApnDB.conectdb();
    
     public void insert(DepartmentBeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
         try {
             
            sql="insert into department(name,dept_code,dept_details,hod_id,start_date,student_capacity,total_staff,staff_id,dept_time_length,dept_prize,dept_photo) values(?,?,?,?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sql); 
            ps.setString(1, beans.getDepartmentName());
            ps.setInt(2,beans.getDepartmentCode());
            ps.setString(3,beans.getDepartmentDetails());
            ps.setInt(4,beans.getHODID());
            ps.setString(5,beans.getStartDate());
            ps.setInt(6,beans.getStudentCapacity());
            ps.setInt(7,beans.getTotalStaff());
            ps.setString(8,beans.getStaffID());
            ps.setInt(9,beans.getTimeLength());
            ps.setInt(10,beans.getDeptPrice());
            ps.setString(11,beans.getCoursePhoto());
            int c = ps.executeUpdate();
            if(c==1){
              message="Data inserted sucessfully"; 
            }
            
             
         } catch (SQLException e) {
             System.out.println("com.smartapn.model.department.insert() : " + e.getMessage());
            message = e.getMessage();
         }finally{
          response.sendRedirect("add_department.jsp?message=" + message);
         }
     
     
     
     }
     
     
     public void delete(DepartmentBeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
     
     
        sql="delete from department where id = ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1,beans.getId());
            int rc = ps.executeUpdate();
            if (rc >= 1) {
                message="Deleted Succesfully";
            }
        } catch (SQLException e) {
            message="Unable to delete because of :"+e.getMessage();
        }finally{
            response.sendRedirect("all_courses.jsp?message="+message);

        }    
     
     
     
     
     }
     
     
     
      public void update(DepartmentBeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
      
      sql="update department set name=?,dept_code=?,dept_details=?,hod_id=?,start_date=?,student_capacity=?,total_staff=?,staff_id=?,dept_time_length=?,dept_prize=?,dept_photo=? where id = ?";
      
          try {
            ps = con.prepareStatement(sql);
            ps.setString(1, beans.getDepartmentName());
            ps.setInt(2,beans.getDepartmentCode());
            ps.setString(3,beans.getDepartmentDetails());
            ps.setInt(4,beans.getHODID());
            ps.setString(5,beans.getStartDate());
            ps.setInt(6,beans.getStudentCapacity());
            ps.setInt(7,beans.getTotalStaff());
            ps.setString(8,beans.getStaffID());
            ps.setInt(9,beans.getTimeLength());
            ps.setInt(10,beans.getDeptPrice());
            ps.setString(11,beans.getCoursePhoto());
            ps.setInt(12,beans.getId());
            
            int r = ps.executeUpdate();
            if (r >= 1) {
                message="Updated Succesfully";
            }
            
          } catch (SQLException e) {
              message="Unable to delete because of :"+e.getMessage();
          }finally{
              response.sendRedirect("all_courses.jsp?message="+message);
          }
      
      
      
      }
     
     
     
     
     
     
     
    
}
