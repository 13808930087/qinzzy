package com.situ.jingbao.dao;

import com.situ.jingbao.model.Customer;
import com.situ.jingbao.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface LoginDao {
    Integer addCustomer(@Param("customer") Customer customer);


    User validation(String username) ;
    User getId(int customerId) ;
	Integer register(@Param("user") User user);
}
