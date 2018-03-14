package com.example.demo.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class User {
    private Long id;

    private String name;

    @JsonFormat(pattern="YYYY-MM-dd HH:mm:ss")
    private Date gmt_create;

    @JsonFormat(pattern="YYYY-MM-dd HH:mm:ss")
    private Date gmt_modified;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getGmt_create() {
        return gmt_create;
    }

    public void setGmt_create(Date gmt_create) {
        this.gmt_create = gmt_create;
    }

    public Date getGmt_modified() {
        return gmt_modified;
    }

    public void setGmt_modified(Date gmt_modified) {
        this.gmt_modified = gmt_modified;
    }
}