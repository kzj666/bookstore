package com.kk.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (Book)实体类
 *
 * @author makejava
 * @since 2020-03-18 16:51:07
 */
public class Book implements Serializable {
    private static final long serialVersionUID = 415294357831211076L;
    
    private String id;
    
    private String bookname;
    
    private String pub;
    
    private Double price;
    
    private Date date;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public String getPub() {
        return pub;
    }

    public void setPub(String pub) {
        this.pub = pub;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

}