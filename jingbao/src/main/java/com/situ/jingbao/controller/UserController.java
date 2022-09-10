package com.situ.jingbao.controller;

import com.situ.jingbao.common.Global;
import com.situ.jingbao.model.*;
import com.situ.jingbao.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private CartService cartService;

    @Autowired
    private OrderService orderService;
    @Autowired
    LoginService loginService;
    @Autowired
    private UserService userService;
    @Autowired
    private TitleService titleService;

    @RequestMapping("/userTemp")
    public String userTemp(Map<String, Object> map, HttpSession session) throws ServletException, IOException {
        head(map, session);
        map.put("pageName", "个人中心");
        return "userTemp";
    }

    @RequestMapping("/customer")
    public String customer(Map<String, Object> map, HttpSession session) throws ServletException, IOException {
        User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
        if (user != null) {
            int customerId = user.getCustomerId();
            Customer customer = userService.getCustomer(customerId);
            map.put("user", user);
            map.put("customer", customer);
        }
        return "customer";
    }


    @PostMapping(value = "/editCustomer", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String, Object> editCustomer(User user, Customer customer, HttpSession session) throws IOException, ServletException {
        Map<String, Object> json = new HashMap<>();
        Integer num01 = userService.editCustomer(customer);
        Integer num02 = userService.editUser(user);
        if (num02 != null && num01 != null) {
            json.put("success", true);
            json.put("editPrompt", "成功");
            User dbUser = loginService.getId(user);
            session.setAttribute(Global.LOGIN_USER_KEY, dbUser);
        } else {
            json.put("success", false);
            json.put("editPrompt", "失败");
        }
        return json;
    }

    @PostMapping(value = "/editGravatar", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String, Object> editGravatar(Map<String, Object> map, MultipartFile multipartFile, HttpSession session) throws IOException, ServletException {
        Map<String, Object> json = new HashMap<>();
        String ofn = multipartFile.getOriginalFilename();
        String ext = ofn.substring(ofn.lastIndexOf("."));//扩展名
        String fn = UUID.randomUUID().toString() + ext;//新文件名
        String path = "F:/java/static/gravatar/";
        String gravatarImg = "gravatar/" + fn;
        path += fn;

        File f = new File(path);
        f.createNewFile();//创建文件（空）

        multipartFile.transferTo(f);


        json.put("success", true);

        json.put("editGravatarPrompt", "头像修改成功");
        json.put("gravatarImg", gravatarImg);

        return json;
    }

    @RequestMapping("/address")
    public String address(Map<String, Object> map, HttpSession session) throws ServletException, IOException {
        User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
        List<Address> addresses = userService.getAddress(0);
        List<UserAddress> userAddresses = userService.getUserAddress(user.getCustomerId());
        map.put("userAddresses", userAddresses);
        map.put("addresses", addresses);
        return "address";
    }

    @PostMapping(value = "/getAddress", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String, Object> getAddress(Integer parentId) throws IOException, ServletException {
        Map<String, Object> json = new HashMap<>();
        List<Address> addresses = userService.getAddress(parentId);
        json.put("addresses", addresses);
        return json;
    }

    @PostMapping(value = "/removeAddress", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String, Object> removeAddress(Integer addressId) throws IOException, ServletException {
        Map<String, Object> json = new HashMap<>();
        boolean b = userService.removeAddress(addressId);
        if (b) {
            json.put("success", true);
            json.put("addressPrompt", "删除地址成功");
        } else {
            json.put("success", false);
            json.put("addressPrompt", "删除地址失败");
        }

        return json;
    }


    @PostMapping(value = "/addUserAddress", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String, Object> addUserAddress(UserAddress address) throws IOException, ServletException {
        Map<String, Object> json = new HashMap<>();
        Integer num = userService.addUserAddress(address);
        if (num != null) {
            json.put("success", true);
            json.put("addressPrompt", "添加地址成功");
        } else {
            json.put("success", false);
            json.put("addressPrompt", "添加地址失败");
        }
        return json;
    }

    @PostMapping(value = "/editUserAddress", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String, Object> editUserAddress(UserAddress address) throws IOException, ServletException {
        Map<String, Object> json = new HashMap<>();
        Integer num = userService.editUserAddress(address);
        if (num != null) {
            json.put("success", true);
            json.put("addressPrompt", "修改地址成功");

        } else {
            json.put("success", false);
            json.put("addressPrompt", "修改地址失败");
        }
        return json;
    }

    @RequestMapping("/orderHistory")
    public String order(Map<String, Object> map, HttpSession session) throws ServletException, IOException {
        User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
        if (user != null) {
            int customerId = user.getCustomerId();
            map.put("user", user);
            List<Order> orders= orderService.findById(customerId);
            map.put("orders",orders);
        }
        
        return "orderHistory";
    }

    public void head(Map<String, Object> map, HttpSession session) {
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

        List<Cart> carts = cartService.getCart(user);
        map.put("carts", carts);
    }
}


