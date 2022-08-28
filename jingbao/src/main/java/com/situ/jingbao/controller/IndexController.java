package com.situ.jingbao.controller;

import com.situ.jingbao.common.Global;
import com.situ.jingbao.dao.LoginDao;
import com.situ.jingbao.interceptor.JingbaoInterceptor;
import com.situ.jingbao.model.Goods;
import com.situ.jingbao.model.Title;
import com.situ.jingbao.model.User;
import com.situ.jingbao.service.ListService;
import com.situ.jingbao.service.LoginService;
import com.situ.jingbao.service.TitleService;
import com.situ.jingbao.util.Md5Utils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {
    @Autowired
    private LoginService loginService;
    @Autowired
    private ListService listService;
   @Autowired
   private TitleService titleService;
    private static final Log log = LogFactory.getLog(JingbaoInterceptor.class);

    @RequestMapping("/index")
    public String indexRequest(Map<String, Object> map, HttpSession session) {
        log.info("index");
        Goods goods=new Goods();
        goods.setGoodsNew(1);
        User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
        List<Title> titles= titleService.getTitle(0);
        List<Goods> goodss=listService.findAll(goods);
        map.put("goodss",goodss);
        if(titles!=null){
            session.setAttribute("titles",titles);
        }
        if(user!=null){
            if (user.getCustomer()!=null){
                session.setAttribute("login_user_name", user.getCustomer().getCustomerName());
            }else {
                session.setAttribute("login_user_name", user.getUsername());
            }
        }else {
            session.setAttribute("login_user_name","个人信息");
        }
        if(user!=null){
            session.setAttribute("login_or_name1", "个人信息");
            session.setAttribute("login_url1","#");
            session.setAttribute("login_or_name2", "注销");
            session.setAttribute("login_url2","/logout");
        }else {
            session.setAttribute("login_or_name1","登录");
            session.setAttribute("login_url1","/login");
            session.setAttribute("login_or_name2","注册");
            session.setAttribute("login_url2","/register");
        }
        return "index";
    }

    @GetMapping("/login")
    public String loginGet(HttpSession session, Map<String, Object> map) throws IOException, ServletException {
        String error = (String) session.getAttribute("login_error");
        if (error != null) {
            map.put("error", error);
            session.removeAttribute("login_error");
        }
        return "login";
    }

    @PostMapping("/login")
    public String loginPost(User user, HttpSession session) throws IOException, ServletException {
        return login(user, session);
    }

    @GetMapping("/register")
    public String RegisterGet(HttpSession session, Map<String, Object> map) throws IOException, ServletException {
        String error = (String) session.getAttribute("login_error");
        if (error != null) {
            map.put("error", error);
            session.removeAttribute("login_error");
        }
        return "register";
    }
    @PostMapping(value = "/register", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String, Object>  registerPost(User user, HttpSession session) throws IOException, ServletException {
        Map<String, Object> json = new HashMap<>();
        User dbUser = loginService.validation(user);
        if (dbUser != null) {
            json.put("success",false);
            json.put("prompt","用户名已存在");
        }else {
            loginService.register(user);
            json.put("success",true);
            json.put("prompt","用户注册成功");
        }
        return json;
    }
    // 注销
    @RequestMapping("/logout")
    public String logout( HttpSession session) throws IOException, ServletException {
        session.removeAttribute(Global.LOGIN_USER_KEY);
        return "redirect:/index";
    }
    private String login(User user, HttpSession session) throws IOException {

        User loginUser = new User();
        loginUser.setUsername(user.getUsername());
        loginUser.setPassword(user.getPassword());

        User dbUser = loginService.validation(loginUser);

        if (dbUser == null) {
            session.setAttribute("login_user", loginUser.getUsername());
            session.setAttribute("login_error", "用户名不存在");
            return "redirect:/login";
        }
        boolean pass = loginService.check(loginUser);
        if (pass) {
            session.setAttribute(Global.LOGIN_USER_KEY, dbUser);
            return "redirect:/index";
        } else {
            session.setAttribute("login_error", "用户名密码不匹配");
            session.setAttribute("login_user", loginUser.getUsername());
            return "redirect:/login";
        }
    }
}
