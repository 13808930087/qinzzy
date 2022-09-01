package com.situ.jingbao.dao;

import com.situ.jingbao.model.Title;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface TitleDao {
    List<Title> getAllTitle() ;
    Title getTitle(int titleId) ;
}
