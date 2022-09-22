package com.xrx.jingbao.service;

import com.xrx.jingbao.model.*;
import com.xrx.jingbao.model.Address;
import com.xrx.jingbao.model.Customer;
import com.xrx.jingbao.model.User;
import com.xrx.jingbao.model.UserAddress;

import java.util.List;

public interface UserService {
    Customer findCustomer(int customerId);
    List<UserAddress> findUserAddress(int customerId);

    Integer editUser(User user);

    List<Address> findAddress(int parentId);

    Integer editCustomer(Customer customer);

    Integer addUserAddress(UserAddress userAddress);
    Integer editUserAddress(UserAddress userAddress);

    boolean removeAddress(Integer addressId);
}
