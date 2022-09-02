package com.situ.jingbao.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.situ.jingbao.common.Global;
import com.situ.jingbao.model.Customer;
import com.situ.jingbao.model.Title;
import com.situ.jingbao.model.User;
import com.situ.jingbao.service.ListService;
import com.situ.jingbao.service.LoginService;
import com.situ.jingbao.service.TitleService;
import com.situ.jingbao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
    @RequestMapping("/user")
    public class UserController {
    @Autowired
    LoginService loginService;
        @Autowired
        private UserService userService;
        @RequestMapping("/cart")
        public String cart(Map<String, Object> map, HttpSession session)throws ServletException, IOException {
            List<Title> titles= titleService.getAllTitle();
            map.put("titles",titles);
            User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
            if(user!=null){
                if (user.getNickname()!=null){
                    map.put("login_user_name", user.getNickname());
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
                if (user.getNickname()!=null){
                    map.put("login_user_name", user.getNickname());
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
        public String customer(Map<String, Object> map, HttpSession session)throws ServletException, IOException {
           User user = (User)session.getAttribute(Global.LOGIN_USER_KEY);
           if(user!=null){
               int customerId = user.getCustomerId();
               Customer customer=userService.getCustomer(customerId);
               map.put("user",user);
               map.put("customer",customer);
           }
            return "customer";
        }
        @PostMapping(value = "/editCustomer", produces = "application/json;charset=utf-8")
        @ResponseBody
        public Map<String, Object>  editCustomer(User user,Customer customer, HttpSession session) throws IOException, ServletException {
            Map<String, Object> json = new HashMap<>();
            Integer num01= userService.editCustomer(customer);
            Integer num02= userService.editUser(user);
                if (num02 !=null&&num01!=null){
                    json.put("success",true);
                    json.put("editPrompt","成功");
                    User dbUser =  loginService.getId(user);
                    session.setAttribute(Global.LOGIN_USER_KEY,dbUser);
                }else {
                    json.put("success",false);
                    json.put("editPrompt","失败");
                }
            return json;
        }
        @PostMapping(value = "/editGravatar", produces = "application/json;charset=utf-8")
        @ResponseBody
        public Map<String, Object>  editGravatar(Map<String, Object> map, MultipartFile multipartFile, HttpSession session) throws IOException, ServletException {
            Map<String, Object> json = new HashMap<>();
            String ofn = multipartFile.getOriginalFilename();
            String ext = ofn.substring(ofn.lastIndexOf("."));//扩展名
            String fn = UUID.randomUUID().toString() + ext;//新文件名
            String path = "F:/java/static/gravatar/";
            String gravatarImg = "gravatar/"+fn;
            path += fn;

            File f = new File(path);
            f.createNewFile();//创建文件（空）

            multipartFile.transferTo(f);


            json.put("success",true);

            json.put("editGravatarPrompt","头像修改成功");
            json.put("gravatarImg",gravatarImg);

            return json;
        }

        @RequestMapping("/address")
        public String address(Map<String, Object> map, HttpSession session)throws ServletException, IOException {
            return "address";
        }
    }


