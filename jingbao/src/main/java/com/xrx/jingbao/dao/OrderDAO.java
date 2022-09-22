package com.xrx.jingbao.dao;

import com.xrx.jingbao.model.Order;
import com.xrx.jingbao.model.OrderItem;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OrderDAO {
    Integer saveOrder(Order order);
    Integer saveOrderItem( OrderItem oi);

    Order findById(@Param("customerId") Integer customerId,@Param("orderId") Integer orderId);
    List<OrderItem> findOrderItemsByOrderId(Integer orderId);
    Integer updateOrder(Order order);

    List<Order> findOrders(@Param("customerId") Integer customerId);
}
