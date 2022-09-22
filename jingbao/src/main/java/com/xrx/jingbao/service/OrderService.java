package com.xrx.jingbao.service;

import com.xrx.jingbao.model.Order;
import com.xrx.jingbao.model.OrderItem;

import java.util.List;

public interface OrderService {
    boolean saveOrder(Order order);
    Order findById(Integer customerId,Integer orderId);
    List<Order> findOrders(Integer customerId);
    List<OrderItem> findOrderItemsByOrderId(Integer orderId);

    boolean updateOrder(Order order);
}
