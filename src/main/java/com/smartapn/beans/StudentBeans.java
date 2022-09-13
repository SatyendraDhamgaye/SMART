/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smartapn.beans;

/**
 *
 * @author Nehal Saonerkar
 */
public class StudentBeans {
    
    
    
private int id;
private String firstname  ; 
private String lastname  ; 
private int enrollmentno ;
private int addmissionno ;
private String email ;
private String registrationdate ;
private String department;
private String semester;
private String qualification;
private String gender ; 
private int mobileNo ;
private String parentrName  ; 
private int parentPhNo; 
private String dob;
private String bloodgroup ;
private String address ;
private String stuPhoto ;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public int getEnrollmentno() {
        return enrollmentno;
    }

    public void setEnrollmentno(int enrollmentno) {
        this.enrollmentno = enrollmentno;
    }

    public int getAddmissionno() {
        return addmissionno;
    }

    public void setAddmissionno(int addmissionno) {
        this.addmissionno = addmissionno;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRegistrationdate() {
        return registrationdate;
    }

    public void setRegistrationdate(String registrationdate) {
        this.registrationdate = registrationdate;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(int mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getParentrName() {
        return parentrName;
    }

    public void setParentrName(String parentrName) {
        this.parentrName = parentrName;
    }

    public int getParentPhNo() {
        return parentPhNo;
    }

    public void setParentPhNo(int parentPhNo) {
        this.parentPhNo = parentPhNo;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getBloodgroup() {
        return bloodgroup;
    }

    public void setBloodgroup(String bloodgroup) {
        this.bloodgroup = bloodgroup;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStuPhoto() {
        return stuPhoto;
    }

    public void setStuPhoto(String stuPhoto) {
        this.stuPhoto = stuPhoto;
    }

    public StudentBeans(int id, String firstname, String lastname, int enrollmentno, int addmissionno, String email, String registrationdate, String department, String semester, String qualification, String gender, int mobileNo, String parentrName, int parentPhNo, String dob, String bloodgroup, String address, String stuPhoto) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.enrollmentno = enrollmentno;
        this.addmissionno = addmissionno;
        this.email = email;
        this.registrationdate = registrationdate;
        this.department = department;
        this.semester = semester;
        this.qualification = qualification;
        this.gender = gender;
        this.mobileNo = mobileNo;
        this.parentrName = parentrName;
        this.parentPhNo = parentPhNo;
        this.dob = dob;
        this.bloodgroup = bloodgroup;
        this.address = address;
        this.stuPhoto = stuPhoto;
    }

    public StudentBeans() {
    }

   

   


    
    


    
}
