package com.situ.jingbao.service.impl;

import com.situ.jingbao.dao.CartDao;
import com.situ.jingbao.dao.UserDao;
import com.situ.jingbao.model.Cart;
import com.situ.jingbao.model.User;
import com.situ.jingbao.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CartServiceImpl  implements CartService {
    @Autowired
    private UserDao userDao;
    @Autowired
    private CartDao cartDao;
    @Override
    public boolean updateCart(Cart cart) {
        if( cartDao.updateCart(cart)!=null) {
            return true;
        }else {
            return false;
        }

    }
    @Override
    public boolean removeCart(Cart cart) {
        if( cartDao.removeCart(cart.getCustomerId(),cart.getGoodsId())!=null) {
            return true;
        }else {
            return false;
        }
    }

    @Override
    public Cart getCartOne(Integer customerId, Integer goodsId) {
        return cartDao.getCartOne(customerId,goodsId);
    }

    @Override
    public List<Cart> getCart(User user) {
        if(user!=null){
            return cartDao.getCart(user.getCustomerId());
        }else {
            return null;
        }
    }

    @Override
    public boolean addCart(Cart cart) {

        if( cartDao.addCart(cart)!=null) {
            return true;
        }else {
            return false;
        }

    }
}
