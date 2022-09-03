package com.situ.jingbao.service;

import com.situ.jingbao.model.Address;
import com.situ.jingbao.model.Cart;
import com.situ.jingbao.model.Customer;
import com.situ.jingbao.model.User;

import java.util.List;
import java.util.Map;

public interface UserService {
    Customer getCustomer(int customerId);
    Address getAddress(int customerId);

    Integer editUser(User user);

    Integer editCustomer(Customer customer);

    List<Cart> getCart(User user);
    Integer addCart(Map cart);
    Integer updateCartGoodsNum(int  goodsNum);
}
