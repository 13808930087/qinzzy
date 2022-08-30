package com.situ.jingbao.model;

public class Goods {
    private Integer goodsId;
    private String      goodsName;
    private String     goodsHoverImg;
    private String    goodsFirstImg;
    private Double   goodsDiscount;
    private Double newGoodsPrice;
    private Double    goodsPrice;
    private Integer   goodsLevel;
    private Integer   goodsNew;

    private Integer   categoryId;



    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public void takeNewGoodsPrice() {
        this.newGoodsPrice = goodsPrice*goodsDiscount;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsHoverImg() {
        return goodsHoverImg;
    }

    public void setGoodsHoverImg(String goodsHoverImg) {
        this.goodsHoverImg = goodsHoverImg;
    }

    public String getGoodsFirstImg() {
        return goodsFirstImg;
    }

    public void setGoodsFirstImg(String goodsFirstImg) {
        this.goodsFirstImg = goodsFirstImg;
    }

    public Double getGoodsDiscount() {
        return goodsDiscount;
    }

    public void setGoodsDiscount(Double goodsDiscount) {
        this.goodsDiscount = goodsDiscount;
    }

    public Double getNewGoodsPrice() {
        return newGoodsPrice;
    }

    public void setNewGoodsPrice(Double newGoodsPrice) {
        this.newGoodsPrice = newGoodsPrice;
    }

    public Double getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public Integer getGoodsLevel() {
        return goodsLevel;
    }

    public void setGoodsLevel(Integer goodsLevel) {
        this.goodsLevel = goodsLevel;
    }

    public Integer getGoodsNew() {
        return goodsNew;
    }

    public void setGoodsNew(Integer goodsNew) {
        this.goodsNew = goodsNew;
    }
}
