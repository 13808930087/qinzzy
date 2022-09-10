package com.situ.jingbao.dao;

import com.situ.jingbao.model.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface UserDao {
    Customer getCustomer(int customerId);
    List<UserAddress> getUserAddress(int customerId);

    List<Address> getAddress(int parentId);

    Integer editCustomer(@Param("customer")Customer customer);

    Integer editUser(@Param("user") User user);

    Integer editUserAddress(@Param("userAddress")UserAddress userAddress);

    Integer addUserAddress(@Param("userAddress")UserAddress userAddress);

    Integer removeAddress(Integer addressId);
}
