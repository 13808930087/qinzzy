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
    public boolean deleteCart(Cart cart) {
        if( cartDao.deleteCart(cart.getCustomerId(),cart.getGoodsId())!=null) {
            return true;
        }else {
            return false;
        }
    }

    @Override
    public Cart findCartOne(Integer customerId, Integer goodsId) {
        return cartDao.findCartOne(customerId,goodsId);
    }

    @Override
    public List<Cart> findCart(User user) {
        if(user!=null){
            return cartDao.findCart(user.getCustomerId());
        }else {
            return null;
        }
    }

    @Override
    public boolean saveCart(Cart cart) {

        if( cartDao.saveCart(cart)!=null) {
            return true;
        }else {
            return false;
        }

    }
}
