package com.situ.jingbao.dao;

import com.situ.jingbao.model.Order;
import com.situ.jingbao.model.OrderItem;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OrderDao {
    Integer addOrder(Order order);
    Integer addOrderItem( OrderItem oi);

    List<Order> findById(Integer customerId);
    List<OrderItem> findOrderItemsByOrderId(Integer orderId);
}
