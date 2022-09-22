package com.xrx.jingbao.dao;

import com.xrx.jingbao.model.Title;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface TitleDAO {
    List<Title> findAllTitle() ;
    Title findTitle(int titleId) ;
}
