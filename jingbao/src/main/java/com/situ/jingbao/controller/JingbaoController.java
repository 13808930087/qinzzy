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
@RequestMapping("/jingbao")
public class JingbaoController {
    @Autowired
    private TitleService titleService;
    @Autowired
    private ListService listService;


    @RequestMapping("/list")
    public String list(Goods goods,String categoryName, Integer pageNum, Integer pageSize, Map<String, Object> map,HttpSession session)throws ServletException, IOException {
        List<Title> titles= titleService.getTitle(0);
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
            map.put("login_url1","user/customer");
            map.put("login_or_name2", "注销");
            map.put("login_url2","/logout");
        }else {
            map.put("login_or_name1","登录");
            map.put("login_url1","/login");
            map.put("login_or_name2","注册");
            map.put("login_url2","/login?sign=0");
        }
        titles=null;
        Title title=null;
        if(categoryName!=null&&categoryName!=""){
            titles=listService.findId(categoryName);
        }
        if(titles!=null&&titles.size()<1){
                title=titles.get(0);
              goods.setCategoryId(titles.get(0).getTitleId());
        }

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
        map.put("title_get",title);
        map.put("goods",goods);
        map.put("categoryName",categoryName);
        if(categoryName!=null ){
            map.put("pageName",categoryName);
        }else {
           map.put("pageName","商品");
        }

        return "list";
    }
    @RequestMapping("/cart")
    public String cart(Map<String, Object> map,HttpSession session)throws ServletException, IOException {
        List<Title> titles= titleService.getTitle(0);
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
            map.put("login_url1","user/customer");
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

    @RequestMapping("/product")
    public String product(Map<String, Object> map, HttpSession session)throws ServletException, IOException {
        List<Title> titles= titleService.getTitle(0);
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
            map.put("login_url1","user/customer");
            map.put("login_or_name2", "注销");
            map.put("login_url2","/logout");
        }else {
            map.put("login_or_name1","登录");
            map.put("login_url1","/login");
            map.put("login_or_name2","注册");
            map.put("login_url2","/login?sign=0");
        }
        map.put("pageName","商品信息");
        return "product";
    }

}
