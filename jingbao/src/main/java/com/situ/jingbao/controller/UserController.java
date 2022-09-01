package com.situ.jingbao.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.situ.jingbao.common.Global;
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
import java.util.List;
import java.util.Map;
    @Controller
    @RequestMapping("/user")
    public class UserController {
        @RequestMapping("/cart")
        public String cart(Map<String, Object> map, HttpSession session)throws ServletException, IOException {
            List<Title> titles= titleService.getAllTitle();
            map.put("titles",titles);
            User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
            if(user!=null){
                if (user.getCustomer()!=null){
                    map.put("login_user_name", user.getCustomer().getCustomerName());
                }else {
                    map.put("login_user_name", user.getUsername());
                }
            }else {
                map.put("login_user_name","个人信息");
            }
            if(user!=null){
                map.put("login_or_name1", "个人信息");
                map.put("login_url1","user/userTemp");
                map.put("login_or_name2", "注销");
                map.put("login_url2","/logout");
            }else {
                map.put("login_or_name1","登录");
                map.put("login_url1","/login");
                map.put("login_or_name2","注册");
                map.put("login_url2","/login?sign=0");
            }
            map.put("pageName","购物车");
            return "cart";
        }
        @Autowired
        private TitleService titleService;
        @RequestMapping("/userTemp")
        public String userTemp(Map<String, Object> map, HttpSession session)throws ServletException, IOException {
            List<Title> titles= titleService.getAllTitle();
            map.put("titles",titles);
            User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
            if(user!=null){
                if (user.getCustomer()!=null){
                    map.put("login_user_name", user.getCustomer().getCustomerName());
                }else {
                    map.put("login_user_name", user.getUsername());
                }
            }else {
                map.put("login_user_name","个人信息");
            }
            if(user!=null){
                map.put("login_or_name1", "个人信息");
                map.put("login_url1","user/userTemp");
                map.put("login_or_name2", "注销");
                map.put("login_url2","/logout");
            }else {
                map.put("login_or_name1","登录");
                map.put("login_url1","/login");
                map.put("login_or_name2","注册");
                map.put("login_url2","/login?sign=0");
            }
            map.put("pageName","个人中心");
            return "userTemp";
        }
        @RequestMapping("/customer")
        public String list(Map<String, Object> map, HttpSession session)throws ServletException, IOException {
            return "customer";
        }
        @RequestMapping("/address")
        public String address(Map<String, Object> map, HttpSession session)throws ServletException, IOException {
            return "address";
        }
    }


