/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.beans;

/**
 *
 * @author Hyodo Ishida
 */
public class SubjectBeans {
    
    private int id;
    private String name;
    private int code;
    private String department;
    private String semister;
    private String teacher;
    private int teachhours;
    private String abbrivation;
    private String scheme;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getSemister() {
        return semister;
    }

    public void setSemister(String semister) {
        this.semister = semister;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public int getTeachhours() {
        return teachhours;
    }

    public void setTeachhours(int teachhours) {
        this.teachhours = teachhours;
    }

    public String getAbbrivation() {
        return abbrivation;
    }

    public void setAbbrivation(String abbrivation) {
        this.abbrivation = abbrivation;
    }

    public String getScheme() {
        return scheme;
    }

    public void setScheme(String scheme) {
        this.scheme = scheme;
    }

    public SubjectBeans(int id, String name, int code, String department, String semister, String teacher, int teachhours, String abbrivation, String scheme) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.department = department;
        this.semister = semister;
        this.teacher = teacher;
        this.teachhours = teachhours;
        this.abbrivation = abbrivation;
        this.scheme = scheme;
    }

    public SubjectBeans() {
    }
    
    
    
    
    
    
}
