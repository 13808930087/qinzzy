package com.situ.jingbao.service.impl;

import com.situ.jingbao.dao.CartDao;
import com.situ.jingbao.dao.OrderDao;
import com.situ.jingbao.model.Order;
import com.situ.jingbao.model.OrderItem;
import com.situ.jingbao.service.OrderService;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    private OrderDao orderDao;
    private CartDao cartDao;

    public OrderServiceImpl(OrderDao orderDao, CartDao cartDao) {
        this.orderDao = orderDao;
        this.cartDao = cartDao;
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
        int rows = orderDao.saveOrder(order);//保存之后，才有订单主键
        for (OrderItem oi : order.getOrderItemList()) {
            oi.setOrderId(order.getOrderId());
            orderDao.saveOrderItem(oi);
            //删除购物车项
          cartDao.deleteCart(order.getCustomerId(),oi.getGoodsId());
        }
        return rows > 0;

    }

    @Override
    public Order findById(Integer customerId, Integer orderId) {
        return orderDao.findById(customerId,orderId);
    }

    @Override
    public List<Order> findOrders(Integer customerId) {
        return orderDao.findOrders(customerId);
    }

    @Override
    public List<OrderItem> findOrderItemsByOrderId(Integer orderId) {
        return orderDao.findOrderItemsByOrderId(orderId);
    }

    @Override
    public boolean updateOrder(Order order) {
        return orderDao.updateOrder(order)>0;
    }
}
