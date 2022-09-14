package com.situ.jingbao.service;

import com.situ.jingbao.model.Cart;
import com.situ.jingbao.model.User;

import java.util.List;

public interface CartService {


    boolean updateCart(Cart cart);

    boolean deleteCart(Cart cart);

    Cart findCartOne(Integer customerId, Integer goodsId);

    List<Cart> findCart(User user);
    boolean saveCart(Cart cart);
}
