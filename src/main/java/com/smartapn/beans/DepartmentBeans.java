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
public class DepartmentBeans {
    private int id;
    private String DepartmentName;
    private int DepartmentCode;
    private String DepartmentDetails;
    private int  HODID;
    private String  StartDate;
    private int  StudentCapacity;
    private int  TotalStaff;
    private String  StaffID;
    private int  TimeLength;
    private int  DeptPrice;
    private String  CoursePhoto;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDepartmentName() {
        return DepartmentName;
    }

    public void setDepartmentName(String DepartmentName) {
        this.DepartmentName = DepartmentName;
    }

    public int getDepartmentCode() {
        return DepartmentCode;
    }

    public void setDepartmentCode(int DepartmentCode) {
        this.DepartmentCode = DepartmentCode;
    }

    public String getDepartmentDetails() {
        return DepartmentDetails;
    }

    public void setDepartmentDetails(String DepartmentDetails) {
        this.DepartmentDetails = DepartmentDetails;
    }

    public int getHODID() {
        return HODID;
    }

    public void setHODID(int HODID) {
        this.HODID = HODID;
    }

    public String getStartDate() {
        return StartDate;
    }

    public void setStartDate(String StartDate) {
        this.StartDate = StartDate;
    }

    public int getStudentCapacity() {
        return StudentCapacity;
    }

    public void setStudentCapacity(int StudentCapacity) {
        this.StudentCapacity = StudentCapacity;
    }

    public int getTotalStaff() {
        return TotalStaff;
    }

    public void setTotalStaff(int TotalStaff) {
        this.TotalStaff = TotalStaff;
    }

    public String getStaffID() {
        return StaffID;
    }

    public void setStaffID(String StaffID) {
        this.StaffID = StaffID;
    }

    public int getTimeLength() {
        return TimeLength;
    }

    public void setTimeLength(int TimeLength) {
        this.TimeLength = TimeLength;
    }

    public int getDeptPrice() {
        return DeptPrice;
    }

    public void setDeptPrice(int DeptPrice) {
        this.DeptPrice = DeptPrice;
    }

    public String getCoursePhoto() {
        return CoursePhoto;
    }

    public void setCoursePhoto(String CoursePhoto) {
        this.CoursePhoto = CoursePhoto;
    }

    public DepartmentBeans(int id, String DepartmentName, int DepartmentCode, String DepartmentDetails, int HODID, String StartDate, int StudentCapacity, int TotalStaff, String StaffID, int TimeLength, int DeptPrice, String CoursePhoto) {
        this.id = id;
        this.DepartmentName = DepartmentName;
        this.DepartmentCode = DepartmentCode;
        this.DepartmentDetails = DepartmentDetails;
        this.HODID = HODID;
        this.StartDate = StartDate;
        this.StudentCapacity = StudentCapacity;
        this.TotalStaff = TotalStaff;
        this.StaffID = StaffID;
        this.TimeLength = TimeLength;
        this.DeptPrice = DeptPrice;
        this.CoursePhoto = CoursePhoto;
    }



    public DepartmentBeans() {
    }
    
    
    
    

    

   

    
    
    
    

    
    
}
