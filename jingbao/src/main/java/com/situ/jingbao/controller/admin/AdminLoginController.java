package com.situ.jingbao.controller.admin;

import com.situ.jingbao.common.Global;
import com.situ.jingbao.model.User;

import com.situ.jingbao.model.admin.AdminUser;
import com.situ.jingbao.service.admin.AdminUserService;

import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;

import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

import java.util.Map;


@Controller
@RequestMapping("/admin")
public class AdminLoginController {
    private static final String ADMIN_USER_LOGIN_ERROR_KEY = "#admin_user_login_error";
    private AdminUserService userService;

    public AdminLoginController(AdminUserService userService) {
        this.userService = userService;
    }

    @GetMapping("/login")
    public String loginGet(HttpSession session, Map<String, Object> map) throws IOException, ServletException {
        String error = (String) session.getAttribute(ADMIN_USER_LOGIN_ERROR_KEY);
        if (error != null) {
            session.removeAttribute(ADMIN_USER_LOGIN_ERROR_KEY);
            map.put("error", error);
        }
        String username = (String) session.getAttribute("current_login_user");
        if (username != null) {
            map.put("username", username);
            session.removeAttribute("current_login_user");
        }
        map.put("pageName", "登录");
        return "admin/login";
    }

    @PostMapping("/login")
    public String loginPost(User user,Map<String, Object> map, HttpSession session) throws IOException, ServletException {
        String sessionCode = (String) session.getAttribute("identifyCode");
        String loginUrl = "admin/login";
        String loginPrompt;
        if (user.getIdentifyCode() == null || user.getIdentifyCode() == "") {
            loginPrompt = " 验证码不能为空";
        } else if (user.getIdentifyCode().equalsIgnoreCase(sessionCode)) {
            AdminUser dbUser = userService.findByUsername(user.getUsername());
            if (dbUser == null) {
                loginPrompt = "用户名不存在";
            } else {
                String str = user.getPassword() + "{" + user.getUsername() + "}";
                String encrypt = DigestUtils.md5DigestAsHex(str.getBytes(StandardCharsets.UTF_8));
                if (encrypt.equals(dbUser.getPassword())) {
                    session.setAttribute(Global.LOGIN_USER_KEY, dbUser);
                    loginUrl = "admin/index";
                    loginPrompt = "登录成功";
                } else {
                    loginPrompt = "用户名密码不匹配";
                }
            }
        } else {
            loginPrompt = "验证码错误";
        }
        map.put("ADMIN_USER_LOGIN_ERROR_KEY", loginPrompt);
        return loginUrl;
    }
}


