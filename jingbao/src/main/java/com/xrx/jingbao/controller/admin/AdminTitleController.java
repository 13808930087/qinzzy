package com.xrx.jingbao.controller.admin;


import com.xrx.jingbao.model.Title;
import com.xrx.jingbao.service.TitleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/admin")
public class AdminTitleController {
    @Autowired
    private TitleService titleService;
    @RequestMapping("/title")
    public String cate(Map<String, Object> map) {
        List<Title> titles = titleService.findAllTitle();
        map.put("titles", titles);
        return "admin/title";
    }

}


