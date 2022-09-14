package com.situ.jingbao.model.admin;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class AdminUserSearchBean extends AdminUser {
    private String keyword;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate createdDate;
    private Integer pageNo = 1;
    private Integer pageSize = 10;

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public Integer getPageNo() {
        return pageNo;
    }

    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }


    public LocalDate getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(LocalDate createdDate) {
        this.createdDate = createdDate;
    }
}
