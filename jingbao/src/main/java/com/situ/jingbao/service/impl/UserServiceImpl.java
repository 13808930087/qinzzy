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
    public Customer findCustomer(int customerId) {
        return userDao.findCustomer(customerId);
    }

    @Override
    public List<UserAddress> findUserAddress(int customerId) {
        return userDao.findUserAddress(customerId);
    }

    @Override
    public Integer editUser(User user) {
        return userDao.editUser(user);
    }

    @Override
    public List<Address> findAddress(int parentId) {
        return userDao.findAddress(parentId);
    }

    @Override
    public Integer editCustomer(Customer customer) {
        return userDao.editCustomer(customer);
    }



    @Override
    public Integer addUserAddress(UserAddress userAddress) {
        return userDao.addUserAddress(userAddress);
    }

    @Override
    public Integer editUserAddress(UserAddress userAddress) {
        return userDao.editUserAddress(userAddress);
    }

    @Override
    public boolean removeAddress(Integer addressId) {
        int num=userDao.removeAddress(addressId);
        return num>0;
    }


}
