package com.situ.jingbao.controller;

import com.situ.jingbao.common.Global;
import com.situ.jingbao.model.*;
import com.situ.jingbao.service.OrderService;
import com.situ.jingbao.service.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/order")
public class OrderController {
    private UserService userService;
    private OrderService orderService;

    public OrderController(UserService userService, OrderService orderService) {
        this.userService = userService;
        this.orderService = orderService;
    }

    @RequestMapping("/buy")
    public String order(Map<String, Object> map,Integer orderId, HttpSession session) throws ServletException, IOException {
        User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
        if (user != null) {
            int customerId = user.getCustomerId();
            map.put("user", user);
        }
        List<OrderItem> orderItems=orderService.findOrderItemsByOrderId(orderId);
        List<Address> addresses = userService.getAddress(0);
        List<UserAddress> userAddresses = userService.getUserAddress(user.getCustomerId());
        map.put("userAddresses", userAddresses);
        map.put("addresses", addresses);
        return "order";
    }

    @PostMapping(value = "/addOrder", produces = "application/json;charset=utf-8")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> addOrder(@RequestBody List<OrderItem> orderItems, HttpSession session) throws IOException, ServletException {
        Map<String, Object> result = new HashMap<>();
        User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
        if (user == null) {
            result.put("success", false);
            result.put("error", "会话已失效，请重新登录");
            return ResponseEntity.badRequest().body(result);
        }
        Order order=new Order();
        order.setCustomerId(user.getCustomerId());
        order.setOrderTime(LocalDateTime.now());
        order.setOrderItemList(orderItems);
        boolean b = orderService.addOrder(order);//保存
        if (b) {
            result.put("success", true);
            result.put("orderId", order.getOrderId());
        } else {
            result.put("success", false);
        }
        return ResponseEntity.ok(result);
    }
}
