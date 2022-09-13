/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.model;

import com.smartapn.DB.SmartApnDB;
import com.smartapn.beans.StudentBeans;
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
public class StudentModel {
    static String message = null;
    static String sql;
    PreparedStatement ps = null;
    Connection con = SmartApnDB.conectdb();
    public void insert(StudentBeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
    
        try {
            sql="insert into student(first_name,last_name,enroll_no,addmission_no,email,regis_date,department,semester,qualification,gender,mobile_no,parent_name,parent_no,birth_date,blood_group,address,photo) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sql); 
            ps.setString(1,beans.getFirstname());
            ps.setString(2,beans.getLastname());
            ps.setInt(3,beans.getEnrollmentno());
            ps.setInt(4,beans.getAddmissionno());
            ps.setString(5,beans.getEmail());
            ps.setString(6,beans.getRegistrationdate());
            ps.setString(7,beans.getDepartment());
            ps.setString(8,beans.getSemester());
            ps.setString(9,beans.getQualification());
            ps.setString(10,beans.getGender());
            ps.setInt(11,beans.getMobileNo());
            ps.setString(12, beans.getParentrName());
            ps.setInt(13,beans.getParentPhNo());
            ps.setString(14,beans.getDob());
            ps.setString(15,beans.getBloodgroup());
            ps.setString(16,beans.getAddress());
            ps.setString(17,beans.getStuPhoto());
            int rc = ps.executeUpdate();
            if(rc==1){
              message="Data inserted sucessfully"; 
            }
        } catch (SQLException e) {
              System.out.println("com.smartapn.model.student.insert() : " + e.getMessage());
            message = e.getMessage();
        }finally{
            
          response.sendRedirect("add_student.jsp?message=" + message);
        }
    
    
    }
    public void delete(StudentBeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
    
            sql="delete from student where id = ?";
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
    public void update(StudentBeans beans, HttpServletRequest request, HttpServletResponse response) throws IOException {
     sql="update student set first_name = ?, last_name = ?, enroll_no = ?,addmission_no =?,email=?,regis_date=?,department=?,semester=?,qualification=?,gender=?,mobile_no=?,parent_name=?,parent_no=?,birth_date=?,blood_group=?,address=?,photo=? where id = ?";
        try {
             ps = con.prepareStatement(sql); 
            ps.setString(1,beans.getFirstname());
            ps.setString(2,beans.getLastname());
            ps.setInt(3,beans.getEnrollmentno());
            ps.setInt(4,beans.getAddmissionno());
            ps.setString(5,beans.getEmail());
            ps.setString(6,beans.getRegistrationdate());
            ps.setString(7,beans.getDepartment());
            ps.setString(8,beans.getSemester());
            ps.setString(9,beans.getQualification());
            ps.setString(10,beans.getGender());
            ps.setInt(11,beans.getMobileNo());
            ps.setString(12, beans.getParentrName());
            ps.setInt(13,beans.getParentPhNo());
            ps.setString(14,beans.getDob());
            ps.setString(15,beans.getBloodgroup());
            ps.setString(16,beans.getAddress());
            ps.setString(17,beans.getStuPhoto());
            ps.setInt(18,beans.getId());
            int v = ps.executeUpdate();
            if(v==1){
              message="Data updated sucessfully"; 
            }
        } catch (SQLException e) {
            message="Unable to delete because of :"+e.getMessage();
        }finally{
            response.sendRedirect("all_students.jsp?message="+message);

        }
    
    }
}
