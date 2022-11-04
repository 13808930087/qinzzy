package com.xrx.jingbao.service.impl;

import com.xrx.jingbao.dao.UserDAO;
import com.xrx.jingbao.model.*;
import com.xrx.jingbao.model.Address;
import com.xrx.jingbao.service.UserService;
import com.xrx.jingbao.model.Customer;
import com.xrx.jingbao.model.User;
import com.xrx.jingbao.model.UserAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO;
    @Override
    public Customer findCustomer(int customerId) {
        return userDAO.findCustomer(customerId);
    }

    @Override
    public List<UserAddress> findUserAddress(int customerId) {
        return userDAO.findUserAddress(customerId);
    }

    @Override
    public Integer editUser(User user) {
        return userDAO.editUser(user);
    }

    @Override
    public List<Address> findAddress(int parentId) {
        return userDAO.findAddress(parentId);
    }

    @Override
    public Integer editCustomer(Customer customer) {
        return userDAO.editCustomer(customer);
    }



    @Override
    public Integer addUserAddress(UserAddress userAddress) {
        return userDAO.addUserAddress(userAddress);
    }

    @Override
    public Integer editUserAddress(UserAddress userAddress) {
        return userDAO.editUserAddress(userAddress);
    }

    @Override
    public boolean removeAddress(Integer addressId) {
        int num=userDAO.removeAddress(addressId);
        return num>0;
    }


}