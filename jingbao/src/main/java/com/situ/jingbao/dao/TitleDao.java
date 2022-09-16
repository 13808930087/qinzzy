package com.situ.jingbao.dao;

import com.situ.jingbao.model.Title;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface TitleDAO {
    List<Title> findAllTitle() ;
    Title findTitle(int titleId) ;
}
