package com.xrx.jingbao.dao;

import com.xrx.jingbao.model.Customer;
import com.xrx.jingbao.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface LoginDAO {
    Integer saveCustomer(@Param("customer") Customer customer);


    User validation(String username) ;
    User findUserId(int customerId) ;
	Integer register(@Param("user") User user);
}
