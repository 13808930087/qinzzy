package com.xrx.jingbao.dao;

import com.xrx.jingbao.model.Goods;
import com.xrx.jingbao.model.GoodsCondition;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ListDAO {

    List<Goods> findGoods(@Param("gc") GoodsCondition gc);
    Goods findGoodsId(int goodsId);
    Integer findId(String categoryName);
}
