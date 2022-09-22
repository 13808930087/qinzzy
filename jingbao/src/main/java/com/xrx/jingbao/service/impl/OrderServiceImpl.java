package com.xrx.jingbao.service.impl;

import com.xrx.jingbao.dao.CartDAO;
import com.xrx.jingbao.dao.OrderDAO;
import com.xrx.jingbao.model.Order;
import com.xrx.jingbao.model.OrderItem;
import com.xrx.jingbao.service.OrderService;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    private OrderDAO orderDAO;
    private CartDAO cartDAO;

    public OrderServiceImpl(OrderDAO orderDao, CartDAO cartDao) {
        this.orderDAO = orderDAO;
        this.cartDAO = cartDAO;
    }

    @Override
    public boolean saveOrder(Order order) {
        LocalDateTime now = LocalDateTime.now();
        order.setOrderTime(now);
        String code = now.format(DateTimeFormatter.ofPattern("yyyyMMddHHmmssSSS"));
        order.setOrderIdentifier(code);//订单编号
        order.setOrderState(Order.OrderState.CREATED);//未支付状态
        if (order.getOrderItemList() != null) {
            BigDecimal bd = new BigDecimal("0");
            for (OrderItem oi : order.getOrderItemList()) {
                bd = bd.add(oi.getGoodsTotal());
            }
            order.setTotal(bd);//设置总价
        }
        //保存订单及订单项
        int rows = orderDAO.saveOrder(order);//保存之后，才有订单主键
        for (OrderItem oi : order.getOrderItemList()) {
            oi.setOrderId(order.getOrderId());
            orderDAO.saveOrderItem(oi);
            //删除购物车项
            cartDAO.deleteCart(order.getCustomerId(),oi.getGoodsId());
        }
        return rows > 0;

    }

    @Override
    public Order findById(Integer customerId, Integer orderId) {
        return orderDAO.findById(customerId,orderId);
    }

    @Override
    public List<Order> findOrders(Integer customerId) {
        return orderDAO.findOrders(customerId);
    }

    @Override
    public List<OrderItem> findOrderItemsByOrderId(Integer orderId) {
        return orderDAO.findOrderItemsByOrderId(orderId);
    }

    @Override
    public boolean updateOrder(Order order) {
        return orderDAO.updateOrder(order)>0;
    }
}
