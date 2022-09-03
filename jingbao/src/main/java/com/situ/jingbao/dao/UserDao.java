package com.situ.jingbao.dao;

import com.situ.jingbao.model.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface UserDao {
    Customer getCustomer(int customerId);
    Address getAddress(int customerId);

    Integer editCustomer(@Param("customer")Customer customer);

    Integer editUser(@Param("user") User user);
    List<Cart> getCart(int customerId);

    Integer addCart(@Param("cart")Map cart);

    Integer updateCartGoodsNum(int goodsNum);
}
