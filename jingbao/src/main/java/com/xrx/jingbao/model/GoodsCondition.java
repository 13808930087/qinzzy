package com.xrx.jingbao.model;

import java.util.Set;

public class GoodsCondition extends Goods{
    private Double priceFilterEnd;
    private Double priceFilterStart;

    private Set<Integer> titleIds;

    public Double getPriceFilterEnd() {
        return priceFilterEnd;
    }

    public void setPriceFilterEnd(Double priceFilterEnd) {
        this.priceFilterEnd = priceFilterEnd;
    }

    public Double getPriceFilterStart() {
        return priceFilterStart;
    }

    public void setPriceFilterStart(Double priceFilterStart) {
        this.priceFilterStart = priceFilterStart;
    }

    public Set<Integer> getTitleIds() {
        return titleIds;
    }

    public void setTitleIds(Set<Integer> titleIds) {
        this.titleIds = titleIds;
    }
}
