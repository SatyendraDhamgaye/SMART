/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.beans;

/**
 *
 * @author Nikhil
 */
public class LoginBeans {
    private int id;
    private int login_id;
    private String username;
    private String password;
    private String email;
    private String role;
    private String photo;

    public LoginBeans( int login_id, String username, String password, String email, String role, String photo) {
        
        this.login_id = login_id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.role = role;
        this.photo = photo;
    }

    public LoginBeans(int parseInt, String parameter, String parameter0, String parameter1, String student) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLogin_id() {
        return login_id;
    }

    public void setLogin_id(int login_id) {
        this.login_id = login_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    

    public LoginBeans() {
    }
    
    
    
    
}
