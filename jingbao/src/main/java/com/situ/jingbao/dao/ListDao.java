package com.situ.jingbao.dao;

import com.situ.jingbao.model.Goods;
import com.situ.jingbao.model.GoodsCondition;
import com.situ.jingbao.model.Title;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

@Mapper
public interface ListDao {

    List<Goods> findGoods(@Param("gc") GoodsCondition gc);
    Goods findGoodsId(int goodsId);

    Integer findId(String categoryName);
}
