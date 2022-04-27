package com.luzz.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Classes {
    private Integer id;

    private String name;

    private Integer open;


    private Date openDate;

    private Date endDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getOpen() {
        return open;
    }

    public void setOpen(Integer open) {
        this.open = open;
    }

    @Override
    public String toString() {
        return "Classes{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", open=" + open +
                ", openDate=" + openDate +
                ", endDate=" + endDate +
                '}';
    }

    public Date getOpenDate() {
        return openDate;
    }

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    public void setOpenDate(Date openDate) {
        this.openDate = openDate;
    }


    public Date getEndDate() {
        return endDate;
    }

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }
}