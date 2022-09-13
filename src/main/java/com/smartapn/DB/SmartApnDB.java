/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Nehal Saonerkar
 */
public class SmartApnDB {
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/smart?useSSL=false";
    static final String user = "root";
    static final String pass = "root";

    public static Connection conectdb() {
        Connection con = null;
        try {
            Class.forName(JDBC_DRIVER);
            con = DriverManager.getConnection(DB_URL, user, pass);
            System.out.println("successfull");

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());

        }
        return con;

    }

    public static void main(String[] args) {
        conectdb();
    }
    
}
