package com.xrx.jingbao.controller;

import com.xrx.jingbao.common.Global;
import com.xrx.jingbao.interceptor.JingbaoInterceptor;
import com.xrx.jingbao.model.*;
import com.xrx.jingbao.service.*;
import com.xrx.jingbao.model.*;
import com.xrx.jingbao.service.CartService;
import com.xrx.jingbao.service.LoginService;
import com.xrx.jingbao.service.TitleService;
import com.xrx.jingbao.util.IdentifyCodeUtils;
import com.xrx.jingbao.service.ListService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {
    @Autowired
private CartService cartService;
    @Autowired
    private LoginService loginService;
    @Autowired
    private ListService listService;
   @Autowired
   private TitleService titleService;
    private static final Log log = LogFactory.getLog(JingbaoInterceptor.class);

    @RequestMapping(value ={"/index","/"})
    public String indexRequest(Map<String, Object> map, HttpSession session) {

        GoodsCondition goods=new GoodsCondition();
        goods.setGoodsNew(1);
        List<Goods> goodss=listService.findGoods(goods);
        head(map,session );
        map.put("goodss",goodss);

        return "index";
    }
    @RequestMapping("/test")
    public String test(Map<String, Object> map, HttpSession session) {

        GoodsCondition goods=new GoodsCondition();
        goods.setGoodsNew(1);
        List<Goods> goodss=listService.findGoods(goods);
        map.put("goodss",goodss);
        head(map,session );
        return "test";
    }

    @GetMapping("/login")
    public String loginGet(HttpSession session, @RequestParam(required = false) Integer sign, Map<String, Object> map) throws IOException, ServletException {
        head(map,session );
        String servletPath =(String) session.getAttribute("servletPath");
        session.removeAttribute("servletPath");
        map.put("sign",sign);
        map.put("servletPath",servletPath);
        map.put("pageName","登录");

        User dbUser=new User();
        dbUser.setPassword("56b291d6ed9b9cb8e2d3dc09cb6377b9");
        dbUser.setNickname("123456");
        dbUser.setUsername("123456");
        dbUser.setCustomerId(1);
        session.setAttribute(Global.LOGIN_USER_KEY, dbUser);

        return "login";
    }

    @PostMapping(value = "/login",produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String,Object> loginPost(User user, HttpSession session) throws IOException, ServletException {
        Map<String,Object> json=new HashMap<>();
        String sessionCode = (String)session.getAttribute("identifyCode");
        boolean success = false;
        String loginPrompt;
        if (user.getIdentifyCode() == null||user.getIdentifyCode()=="") {
            success = false;
            loginPrompt=" 验证码不能为空";
        }else if(user.getIdentifyCode().equalsIgnoreCase(sessionCode)){
            User dbUser = loginService.validation(user);
            if (dbUser == null) {
                success = false;
                loginPrompt="用户名不存在";
            }else {
                boolean pass = loginService.check(user);
                if (pass) {
                    session.setAttribute(Global.LOGIN_USER_KEY, dbUser);
                    success = true;
                    loginPrompt="登录成功";
                    session.removeAttribute("servletPath");
                } else {
                    success = false;
                    loginPrompt="用户名密码不匹配";
                }
            }
        }else {
            success = false;
            loginPrompt="验证码错误";
        }
        json.put("success",success);
        json.put("loginPrompt",loginPrompt);
        return json;
    }

    @PostMapping(value = "/register", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String, Object>  register(User user, HttpSession session) throws IOException, ServletException {
        Map<String, Object> json = new HashMap<>();
        User dbUser = loginService.validation(user);
        if (dbUser != null) {
            json.put("success",false);
            json.put("registerPrompt","用户名已存在");
        }else {

            Integer num01=loginService.register(user);
            dbUser = loginService.validation(user);
            Customer customer=new Customer();
            customer.setCustomerId(dbUser.getCustomerId());
            Integer num02=loginService.saveCustomer(customer);
            if(num01!=null&&num02!=null){
                json.put("success",true);
                json.put("registerPrompt","用户注册成功");
            }else {
                json.put("success",false);
                json.put("registerPrompt","用户注册失败");
            }

        }
        return json;
    }
    // 注销
    @RequestMapping("/logout")
    public String logout( HttpSession session) throws IOException, ServletException {
        session.removeAttribute(Global.LOGIN_USER_KEY);

        return "redirect:/index";
    }

    @RequestMapping("/identifyImage")
    public void identifyImage(HttpServletResponse response, HttpSession session){

        //创建随机验证码
        IdentifyCodeUtils utils = new IdentifyCodeUtils();
        String identifyCode = utils.getIdentifyCode();
        //session存入验证码
        session.setAttribute("identifyCode", identifyCode);
        //根据验证码创建图片
        BufferedImage identifyImage = utils.getIdentifyImage(identifyCode);
        //回传给前端
        utils.responseIdentifyImg(identifyImage,response);

    }

    public void head(Map<String, Object> map, HttpSession session){
        List<Title> titles = titleService.findAllTitle();
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


            List<Cart> carts = cartService.findCart(user);
            map.put("carts", carts);
        }
}