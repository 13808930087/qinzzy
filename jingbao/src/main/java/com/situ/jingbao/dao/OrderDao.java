package com.situ.jingbao.dao;

import com.situ.jingbao.model.Order;
import com.situ.jingbao.model.OrderItem;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OrderDao {
    Integer saveOrder(Order order);
    Integer saveOrderItem( OrderItem oi);

    Order findById(@Param("customerId") Integer customerId,@Param("orderId") Integer orderId);
    List<OrderItem> findOrderItemsByOrderId(Integer orderId);
    Integer updateOrder(Order order);

    List<Order> findOrders(@Param("customerId") Integer customerId);
}
