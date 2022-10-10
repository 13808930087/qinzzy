package com.xrx.jingbao.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

    @Controller
    @RequestMapping("/admin")
    public class AdminIndexController {

        @GetMapping("/index")
        public String index() {
            return "admin/index";
        }
        @GetMapping("/welcome")
        public String welcome() {
            return "admin/welcome";
        }
        @GetMapping("/oneSet")
        public String oneSet() {
            return "admin/oneSet";
        }

    }

