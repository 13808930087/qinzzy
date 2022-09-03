package com.situ.jingbao.service.impl;

import com.situ.jingbao.dao.UserDao;
import com.situ.jingbao.model.Address;
import com.situ.jingbao.model.Cart;
import com.situ.jingbao.model.Customer;
import com.situ.jingbao.model.User;
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
    public Address getAddress(int customerId) {
        return userDao.getAddress(customerId);
    }

    @Override
    public Integer editUser(User user) {
        return userDao.editUser(user);
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
