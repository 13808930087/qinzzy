package com.situ.jingbao.dao;

import com.situ.jingbao.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface LoginDao {
	User validation(String username) ;
	int register(@Param("user") User user);
}
