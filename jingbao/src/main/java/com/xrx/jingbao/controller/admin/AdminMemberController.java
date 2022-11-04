package com.xrx.jingbao.controller.admin;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;


@Controller
@RequestMapping("/admin")
public class AdminMemberController {

    @RequestMapping("/memberList")
    public String memberList(Map<String, Object> map) {
        return "admin/member-list";
    }

    @RequestMapping("/memberDel")
    public String memberDel(Map<String, Object> map) {
        return "admin/member-del";
    }

}

