package com.situ.jingbao.service.impl;

import com.situ.jingbao.dao.CartDAO;
import com.situ.jingbao.dao.UserDAO;
import com.situ.jingbao.model.Cart;
import com.situ.jingbao.model.User;
import com.situ.jingbao.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CartServiceImpl  implements CartService {
    @Autowired
    private CartDAO cartDAO;
    @Override
    public boolean updateCart(Cart cart) {
        if( cartDAO.updateCart(cart)!=null) {
            return true;
        }else {
            return false;
        }

    }
    @Override
    public boolean deleteCart(Cart cart) {
        if( cartDAO.deleteCart(cart.getCustomerId(),cart.getGoodsId())!=null) {
            return true;
        }else {
            return false;
        }
    }

    @Override
    public Cart findCartOne(Integer customerId, Integer goodsId) {
        return cartDAO.findCartOne(customerId,goodsId);
    }

    @Override
    public List<Cart> findCart(User user) {
        if(user!=null){
            return cartDAO.findCart(user.getCustomerId());
        }else {
            return null;
        }
    }

    @Override
    public boolean saveCart(Cart cart) {

        if( cartDAO.saveCart(cart)!=null) {
            return true;
        }else {
            return false;
        }

    }
}
