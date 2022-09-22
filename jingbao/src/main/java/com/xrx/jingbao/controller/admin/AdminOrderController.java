package com.xrx.jingbao.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminOrderController {
    @RequestMapping("/orderInfo")
    public String orderCount(Map<String, Object> map) {
        return "admin/orderInfo";
    }
    @RequestMapping("/orderList")
    public String orderList(Map<String, Object> map) {
        return "admin/orderList";
    }
    @RequestMapping("/orderAmount")
    public String orderAmount(Map<String, Object> map) {
        return "admin/orderAmount";
    }
}
