package com.situ.jingbao.dao;

import com.situ.jingbao.model.Goods;
import com.situ.jingbao.model.Title;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ListDao {

    List<Goods> findAll(@Param("goods") Goods goods);
    List<Title> findId(String categoryName);
}
