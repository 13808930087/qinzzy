package com.situ.jingbao.service;

import com.situ.jingbao.model.Order;
import com.situ.jingbao.model.OrderItem;

import java.util.List;

public interface OrderService {
    boolean addOrder(Order order);
    List<Order> findById(Integer customerId);
    List<OrderItem> findOrderItemsByOrderId(Integer orderId);
}
