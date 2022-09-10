package com.situ.flight.dao;

import com.situ.flight.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface LoginDao {
	User validation(String username) ;

}
