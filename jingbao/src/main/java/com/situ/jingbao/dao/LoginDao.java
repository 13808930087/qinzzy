package com.situ.jingbao.dao;

import com.situ.jingbao.model.Customer;
import com.situ.jingbao.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface LoginDao {
    Integer saveCustomer(@Param("customer") Customer customer);


    User validation(String username) ;
    User findUserId(int customerId) ;
	Integer register(@Param("user") User user);
}
