package com.xrx.jingbao.model;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

public class Goods {
    private Integer goodsId;
    private String      goodsName;
    private String     goodsHoverImg;
    private String    goodsFirstImg;
    private BigDecimal   goodsDiscount;
    private BigDecimal newGoodsPrice;
    private BigDecimal   goodsPrice;
    private Integer   goodsLevel;
    private Integer   goodsNew;
    private Integer   categoryId;
    private String goodsIntroduce;
    private List<String> goodsImgs;

    public String getGoodsIntroduce() {
        return goodsIntroduce;
    }

    public void setGoodsIntroduce(String goodsIntroduce) {
        this.goodsIntroduce = goodsIntroduce;
    }

    public List<String> getGoodsImgs() {
        return goodsImgs;
    }

    public void setGoodsImgs(List<String> goodsImgs) {
        this.goodsImgs = goodsImgs;
    }

    public void takeNewGoodsPrice() {
        this.newGoodsPrice = goodsPrice.multiply(goodsDiscount);
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

    public BigDecimal getGoodsDiscount() {
        return goodsDiscount;
    }

    public void setGoodsDiscount(BigDecimal goodsDiscount) {
        this.goodsDiscount = goodsDiscount;
    }

    public BigDecimal getNewGoodsPrice() {
        return newGoodsPrice;
    }

    public void setNewGoodsPrice(BigDecimal newGoodsPrice) {
        this.newGoodsPrice = newGoodsPrice;
    }

    public BigDecimal getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(BigDecimal goodsPrice) {
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

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }
}
