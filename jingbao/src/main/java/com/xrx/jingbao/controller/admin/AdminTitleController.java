package com.xrx.jingbao.controller.admin;


import com.xrx.jingbao.model.Title;
import com.xrx.jingbao.service.TitleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
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
    @PostMapping(value = "/titles", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String,Object> cates(Map<String, Object> map) {
        Map<String, Object> json = new HashMap<>();
        List<Title> titles = titleService.findAllTitle();
        json.put("titles", titles);
        return json;
    }

}


