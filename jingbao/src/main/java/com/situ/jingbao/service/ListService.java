package com.situ.jingbao.service;

import com.situ.jingbao.model.Goods;
import com.situ.jingbao.model.GoodsCondition;

import java.util.List;

public interface ListService {
    List<Goods> findGoods(GoodsCondition gs);

    Goods findGoodsId(int goodsId);
    Integer findId(String categoryName);
}
