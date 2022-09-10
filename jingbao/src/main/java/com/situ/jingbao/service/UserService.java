package com.situ.jingbao.service;

import com.situ.jingbao.model.*;

import java.util.List;
import java.util.Map;

public interface UserService {
    Customer getCustomer(int customerId);
    List<UserAddress> getUserAddress(int customerId);

    Integer editUser(User user);

    List<Address> getAddress(int parentId);

    Integer editCustomer(Customer customer);

    Integer addUserAddress(UserAddress userAddress);
    Integer editUserAddress(UserAddress userAddress);

    boolean removeAddress(Integer addressId);
}
