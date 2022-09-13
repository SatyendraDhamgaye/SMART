/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.model;

import com.smartapn.DB.SmartApnDB;
import com.smartapn.beans.LibraryAssetsBeans;
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
public class LibraryAssetsModel {
    static String message = null;
    static String sql;
    PreparedStatement ps = null;
    Connection con = SmartApnDB.conectdb();
    public void insert(LibraryAssetsBeans librarybeans, HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            
        
 
        sql="insert into libarary(title,subject,authername,publisher,department,Assettype,Purchasedate,price,status,assetsdetails) values(?,?,?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sql); 
            ps.setString(1, librarybeans.getTitle());
            ps.setString(2, librarybeans.getSubject());
            ps.setString(3, librarybeans.getAuthorName());
            ps.setString(4, librarybeans.getPublisher());
            ps.setString(5, librarybeans.getDepartment());
            ps.setString(6, librarybeans.getAssetType());
            ps.setString(7, librarybeans.getPurchaseDate());
            ps.setInt(8, librarybeans.getPrice());
            ps.setString(9, librarybeans.getStatus());
            ps.setString(10, librarybeans.getAssetDetails());
            int rc = ps.executeUpdate();
            if(rc==1){
              message="Data inserted sucessfully"; 
            }
            
    } catch (SQLException e) {
             System.out.println("com.smartapn.model.libarary.insert() : " + e.getMessage());
            message = e.getMessage();
        }finally{
          response.sendRedirect("add_library.jsp?message=" + message);
         }
    }
    
    
    
    
}
