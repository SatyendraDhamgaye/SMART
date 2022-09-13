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
public class LibraryAssetsBeans {
    
private String Title  ; 
private String Subject  ; 
private String AuthorName ; 
private String Publisher ;
private String Department  ; 
private String AssetType  ; 
private String PurchaseDate ;
private int Price; 
private String Status  ; 
private String AssetDetails ;

   


    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getSubject() {
        return Subject;
    }

    public void setSubject(String Subject) {
        this.Subject = Subject;
    }

    public String getAuthorName() {
        return AuthorName;
    }

    public void setAuthorName(String AuthorName) {
        this.AuthorName = AuthorName;
    }

    public String getPublisher() {
        return Publisher;
    }

    public void setPublisher(String Publisher) {
        this.Publisher = Publisher;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String Department) {
        this.Department = Department;
    }

    public String getAssetType() {
        return AssetType;
    }

    public void setAssetType(String AssetType) {
        this.AssetType = AssetType;
    }

    public String getPurchaseDate() {
        return PurchaseDate;
    }

    public void setPurchaseDate(String PurchaseDate) {
        this.PurchaseDate = PurchaseDate;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int Price) {
        this.Price = Price;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public String getAssetDetails() {
        return AssetDetails;
    }

    public void setAssetDetails(String AssetDetails) {
        this.AssetDetails = AssetDetails;
    }

    public LibraryAssetsBeans(String Title, String Subject, String AuthorName, String Publisher, String Department, String AssetType, String PurchaseDate, int Price, String Status, String AssetDetails) {
       
        this.Title = Title;
        this.Subject = Subject;
        this.AuthorName = AuthorName;
        this.Publisher = Publisher;
        this.Department = Department;
        this.AssetType = AssetType;
        this.PurchaseDate = PurchaseDate;
        this.Price = Price;
        this.Status = Status;
        this.AssetDetails = AssetDetails;
    }
    
    



    
}
