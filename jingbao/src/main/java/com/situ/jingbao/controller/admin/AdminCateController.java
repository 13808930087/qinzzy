package com.situ.jingbao.controller.admin;


import com.situ.jingbao.service.admin.AdminUserService;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;


@Controller
@RequestMapping("/admin")
public class AdminCateController {

    @RequestMapping("/cate")
    public String cate(Map<String, Object> map) {
        return "admin/cate";
    }

}


