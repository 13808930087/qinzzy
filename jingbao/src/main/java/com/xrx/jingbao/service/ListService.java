package com.xrx.jingbao.service;

import com.xrx.jingbao.model.Goods;
import com.xrx.jingbao.model.GoodsCondition;

import java.util.List;

public interface ListService {
    List<Goods> findGoods(GoodsCondition gs);

    Goods findGoodsId(int goodsId);
    Integer findId(String categoryName);
}
