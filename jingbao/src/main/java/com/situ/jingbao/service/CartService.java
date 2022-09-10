package com.situ.jingbao.service;

import com.situ.jingbao.model.Cart;
import com.situ.jingbao.model.User;

import java.util.List;

public interface CartService {


    boolean updateCart(Cart cart);

    boolean removeCart(Cart cart);

    Cart getCartOne(Integer customerId, Integer goodsId);

    List<Cart> getCart(User user);
    boolean addCart(Cart cart);
}
