package com.xrx.jingbao.model;

import java.util.List;

public class Title {
    private String titleName;
    private Integer titleId;
    private Integer parentId;
    private Integer titleLevel;
    private String titleSmallImg;
    private String titleBigImg;
    private String titleFourImg;
    private List<Title> titles;

    public String getTitleFourImg() {
        return titleFourImg;
    }

    public void setTitleFourImg(String titleFourImg) {
        this.titleFourImg = titleFourImg;
    }

    public String getTitleName() {
        return titleName;
    }

    public void setTitleName(String titleName) {
        this.titleName = titleName;
    }

    public String getTitleSmallImg() {
        return titleSmallImg;
    }

    public void setTitleSmallImg(String titleSmallImg) {
        this.titleSmallImg = titleSmallImg;
    }

    public String getTitleBigImg() {
        return titleBigImg;
    }

    public void setTitleBigImg(String titleBigImg) {
        this.titleBigImg = titleBigImg;
    }

    public Integer getTitleId() {
        return titleId;
    }

    public void setTitleId(Integer titleId) {
        this.titleId = titleId;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getTitleLevel() {
        return titleLevel;
    }

    public void setTitleLevel(Integer titleLevel) {
        this.titleLevel = titleLevel;
    }

    public List<Title> getTitles() {
        return titles;
    }

    public void setTitles(List<Title> titles) {
        this.titles = titles;
    }
}
