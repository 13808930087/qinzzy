package com.situ.jingbao.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.situ.jingbao.model.Goods;
import com.situ.jingbao.service.ListService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/jingbao")
public class JingbaoController {

    private ListService listService;

    public JingbaoController(ListService listService) {
        this.listService = listService;
    }

    @RequestMapping("/list")
    public String list(Goods goods, Integer pageNum, Integer pageSize, Map<String, Object> map)throws ServletException, IOException {
        if (pageNum==null) {
            pageNum = 1;
        }
        if (pageSize==null) {
            pageSize = 12;
        }
        PageHelper.startPage(pageNum, pageSize);
        List<Goods> goodss = listService.findAll(goods);
        PageInfo<Goods> pi=new PageInfo(goodss);
        pi.calcByNavigatePages(5);
        map.put("goodss", goodss);
        map.put("pi", pi);
        map.put("goods",goods);
        return "jingbao/list";
    }
    @RequestMapping("/cart")
    public String cart()throws ServletException, IOException {
        return "jingbao/cart";
    }
}
