package com.xrx.jingbao.controller;

import com.xrx.jingbao.common.Global;
import com.xrx.jingbao.model.*;
import com.xrx.jingbao.model.*;
import com.xrx.jingbao.service.CartService;
import com.xrx.jingbao.service.OrderService;
import com.xrx.jingbao.service.TitleService;
import com.xrx.jingbao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private CartService cartService;
    @Autowired
    private TitleService titleService;
    private UserService userService;
    private OrderService orderService;

    public OrderController(UserService userService, OrderService orderService) {
        this.userService = userService;
        this.orderService = orderService;
    }

    @RequestMapping("/buy")
    public String order(Map<String, Object> map, Integer orderId, HttpSession session) throws ServletException, IOException {
        head(map, session);
        User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
        if (user != null) {
            int customerId = user.getCustomerId();
            map.put("user", user);
            Order order = orderService.findById(customerId,orderId);
            map.put("order", order);
        }
        List<OrderItem> orderItems = orderService.findOrderItemsByOrderId(orderId);
        List<Address> addresses = userService.findAddress(0);
        List<UserAddress> userAddresses = userService.findUserAddress(user.getCustomerId());
        map.put("userAddresses", userAddresses);
        map.put("orderId", orderId);
        map.put("orderItems", orderItems);
        map.put("addresses", addresses);
        return "order";
    }

    @PostMapping(value = "/saveOrder", produces = "application/json;charset=utf-8")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> saveOrder(@RequestBody List<OrderItem> orderItems, HttpSession session) throws IOException, ServletException {
        Map<String, Object> result = new HashMap<>();
        User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
        if (user == null) {
            result.put("success", false);
            result.put("error", "会话已失效，请重新登录");
            return ResponseEntity.badRequest().body(result);
        }
        Order order = new Order();
        order.setCustomerId(user.getCustomerId());
        order.setOrderTime(LocalDateTime.now());
        order.setOrderItemList(orderItems);
        boolean b = orderService.saveOrder(order);//保存
        if (b) {
            result.put("success", true);
            result.put("orderId", order.getOrderId());
        } else {
            result.put("success", false);
        }
        return ResponseEntity.ok(result);
    }

    @PostMapping(value = "/updateOrder", produces = "application/json;charset=utf-8")
    @ResponseBody
    public  Map<String, Object>  updateOrder(Order order,Integer orderStateId, HttpSession session) throws IOException, ServletException {
        Map<String, Object> json = new HashMap<>();
        User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
        if (user == null) {
            json.put("success", false);
            json.put("error", "会话已失效，请重新登录");
            return json;
        }
        switch (orderStateId){
            case 1:order.setOrderState(Order.OrderState.PAIED);break;
        }
        boolean b= orderService.updateOrder(order);
        if (b) {
            json.put("success", true);
            json.put("orderId", order.getOrderId());
        } else {
            json.put("success", false);
        }
        return json;
    }

    public void head(Map<String, Object> map, HttpSession session) {
        List<Title> titles = titleService.findAllTitle();
        map.put("titles", titles);
        User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
        if (user != null) {
            if (user.getNickname() != null) {
                map.put("login_user_name", user.getNickname());
            } else {
                map.put("login_user_name", user.getUsername());
            }
        } else {
            map.put("login_user_name", "个人信息");
        }
        if (user != null) {
            map.put("login_or_name1", "个人信息");
            map.put("login_url1", "user/userTemp");
            map.put("login_or_name2", "注销");
            map.put("login_url2", "/logout");
        } else {
            map.put("login_or_name1", "登录");
            map.put("login_url1", "/login");
            map.put("login_or_name2", "注册");
            map.put("login_url2", "/login?sign=0");
        }

        List<Cart> carts = cartService.findCart(user);
        map.put("carts", carts);
    }
}
