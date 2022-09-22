package com.xrx.jingbao.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminGoodsController {
    @RequestMapping("/goodsList")
    public String goodsList(Map<String, Object> map) {
        return "admin/goodsList";
    }
}
