package com.situ.jingbao.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.situ.jingbao.common.Global;
import com.situ.jingbao.model.GoodsCondition;
import com.situ.jingbao.model.Goods;
import com.situ.jingbao.model.Title;
import com.situ.jingbao.model.User;
import com.situ.jingbao.service.ListService;
import com.situ.jingbao.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

@Controller
@RequestMapping("/jingbao")
public class JingbaoController {
    @Autowired
    private TitleService titleService;
    @Autowired
    private ListService listService;


    @RequestMapping("/list")
    public String list(GoodsCondition goods, String categoryName, Integer pageNum, Integer pageSize, Map<String, Object> map, HttpSession session) throws ServletException, IOException {
        List<Title> titles = titleService.getAllTitle();
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
        if (pageNum == null) {
            pageNum = 1;
        }
        if (pageSize == null) {
            pageSize = 12;
        }
        List<Goods> goodss = null;

        Title title = null;
        if (categoryName != null && categoryName != "") {
            Integer id = listService.findId(categoryName);
            if (id != null) {
                title = titleService.getTitle(id);
                goods.setCategoryId(id);
            }
        }else if(goods.getCategoryId()!=null){
            title = titleService.getTitle(goods.getCategoryId());
        }
        Set<Integer> titleIds = new HashSet<>();
        if (title != null) {
            titleIds = titleIds(title, titleIds);
            goods.setTitleIds(titleIds);
        }
       PageHelper.startPage(pageNum, pageSize);
        goodss = listService.findGoods(goods);
        PageInfo<Goods> pi = new PageInfo(goodss);
        pi.calcByNavigatePages(5);
        map.put("goodss", goodss);
        map.put("pi", pi);
        map.put("title_get", title);
        map.put("goods", goods);
        map.put("categoryName", categoryName);
        if (categoryName != null) {
            map.put("pageName", categoryName);
        } else {
            map.put("pageName", "商品");
        }
        return "list";
    }


    @RequestMapping("/product")
    public String product(Map<String, Object> map, HttpSession session) throws ServletException, IOException {
        List<Title> titles = titleService.getAllTitle();
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
        map.put("pageName", "商品信息");
        return "product";
    }

    public Set<Integer> titleIds(Title title, Set<Integer> titleIds) {
        if (title.getTitles() == null || title.getTitles().size() == 0) {
            titleIds.add(title.getTitleId());
            return titleIds;
        } else {
            titleIds.add(title.getTitleId());
            for (int i = 0; i < title.getTitles().size(); i++) {
                titleIds(title.getTitles().get(i), titleIds);
            }
            return titleIds;
        }
    }
}
