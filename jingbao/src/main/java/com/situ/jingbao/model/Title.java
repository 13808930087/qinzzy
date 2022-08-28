package com.situ.jingbao.model;

import java.util.List;

public class Title {
    private String titleName;
    private int titleId;
    private int parentId;
    private int titleLevel;
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

    public int getTitleId() {
        return titleId;
    }

    public void setTitleId(int titleId) {
        this.titleId = titleId;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public int getTitleLevel() {
        return titleLevel;
    }

    public void setTitleLevel(int titleLevel) {
        this.titleLevel = titleLevel;
    }

    public List<Title> getTitles() {
        return titles;
    }

    public void setTitles(List<Title> titles) {
        this.titles = titles;
    }
}
