/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.model;

/**
 *
 * @author Hyodo Ishida
 */


import com.smartapn.DB.SmartApnDB;
import com.smartapn.beans.SubjectBeans;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SubjectModel {
     static String message = null;
    static String sql;
    PreparedStatement ps = null;
    Connection con = SmartApnDB.conectdb();
    
    
    public void insert(SubjectBeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            sql="insert into subject(sub_name,sub_code,Dept,sem,sub_teacher,Teach_hours,sub_abbr,scheme) values(?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sql); 
            ps.setString(1,beans.getName());
            ps.setInt(2,beans.getCode());
            ps.setString(3,beans.getDepartment());
            ps.setString(4,beans.getSemister());
            ps.setString(5,beans.getTeacher());
            ps.setInt(6,beans.getTeachhours());
            ps.setString(7,beans.getAbbrivation());
            ps.setString(8,beans.getScheme());
             int rc = ps.executeUpdate();
            if(rc==1){
              message="Data inserted sucessfully"; 
            }
            
            
        } catch (SQLException e) {
             System.out.println("com.smartapn.model.student.insert() : " + e.getMessage());
            message = e.getMessage();
        }finally{
            
          response.sendRedirect("add_subject.jsp?message=" + message);
        }
    }
    public void delete(SubjectBeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
    
            sql="delete from subject where id = ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1,beans.getId());
            int s = ps.executeUpdate();
            if (s >= 1) {
                message="Deleted Succesfully";
            }
        } catch (SQLException e) {
            message="Unable to delete because of :"+e.getMessage();
        }finally{
            response.sendRedirect("all_students.jsp?message="+message);

        }
    }
    
    public void update(SubjectBeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
    sql="update subject set sub_name=?,sub_code=?,Dept=?,sem=?,sub_teacher=?,Teach_hours=?,sub_abbr=?,scheme=? where id = ?"; 
      try {
            ps = con.prepareStatement(sql); 
            ps.setString(1,beans.getName());
            ps.setInt(2,beans.getCode());
            ps.setString(3,beans.getDepartment());
            ps.setString(4,beans.getSemister());
            ps.setString(5,beans.getTeacher());
            ps.setInt(6,beans.getTeachhours());
            ps.setString(7,beans.getAbbrivation());
            ps.setString(8,beans.getScheme());
            ps.setInt(9,beans.getId());
             int v = ps.executeUpdate();
            if(v==1){
              message="Data updated sucessfully"; 
            }
            
            
        } catch (SQLException e) {
             System.out.println("com.smartapn.model.student.insert() : " + e.getMessage());
            message = e.getMessage();
        }finally{
            
          response.sendRedirect("all_subjects.jsp?message=" + message);
        }
    }
    
    
    
    
    
    }
