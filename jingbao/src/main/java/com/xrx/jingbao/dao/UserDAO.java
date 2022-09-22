package com.xrx.jingbao.dao;

import com.xrx.jingbao.model.*;
import com.xrx.jingbao.model.Address;
import com.xrx.jingbao.model.Customer;
import com.xrx.jingbao.model.User;
import com.xrx.jingbao.model.UserAddress;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserDAO {
    Customer findCustomer(int customerId);
    List<UserAddress> findUserAddress(int customerId);

    List<Address> findAddress(int parentId);

    Integer editCustomer(@Param("customer")Customer customer);

    Integer editUser(@Param("user") User user);
    Integer editUserAddress(@Param("userAddress")UserAddress userAddress);

    Integer addUserAddress(@Param("userAddress")UserAddress userAddress);

    Integer removeAddress(Integer addressId);
}
