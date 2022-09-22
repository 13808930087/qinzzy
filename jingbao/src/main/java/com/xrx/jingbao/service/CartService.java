package com.xrx.jingbao.service;

import com.xrx.jingbao.model.Cart;
import com.xrx.jingbao.model.User;

import java.util.List;

public interface CartService {


    boolean updateCart(Cart cart);

    boolean deleteCart(Cart cart);

    Cart findCartOne(Integer customerId, Integer goodsId);

    List<Cart> findCart(User user);
    boolean saveCart(Cart cart);
}
