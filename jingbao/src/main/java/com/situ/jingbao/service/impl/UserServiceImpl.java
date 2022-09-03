package com.situ.jingbao.service.impl;

import com.situ.jingbao.dao.UserDao;
import com.situ.jingbao.model.*;
import com.situ.jingbao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public Customer getCustomer(int customerId) {
        return userDao.getCustomer(customerId);
    }

    @Override
    public List<UserAddress> getUserAddress(int customerId) {
        return userDao.getUserAddress(customerId);
    }

    @Override
    public Integer editUser(User user) {
        return userDao.editUser(user);
    }

    @Override
    public List<Address> getAddress(int parentId) {
        return userDao.getAddress(parentId);
    }

    @Override
    public Integer editCustomer(Customer customer) {
        return userDao.editCustomer(customer);
    }

    @Override
    public List<Cart> getCart(User user) {
        return userDao.getCart(user.getCustomerId());
    }

    @Override
    public Integer addCart(Map cart) {
        return userDao.addCart(cart);
    }

    @Override
    public Integer updateCartGoodsNum(int goodsNum) {
        return userDao.updateCartGoodsNum(goodsNum);
    }
}
