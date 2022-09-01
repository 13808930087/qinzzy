package com.situ.jingbao.model;

import java.util.Set;

public class GoodsCondition extends Goods{
    private Set<Integer> titleIds;

    public Set<Integer> getTitleIds() {
        return titleIds;
    }

    public void setTitleIds(Set<Integer> titleIds) {
        this.titleIds = titleIds;
    }
}
