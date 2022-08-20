package com.situ.flight.controller;

import com.situ.flight.common.Global;
import com.situ.flight.dao.LoginDao;
import com.situ.flight.model.Routes;
import com.situ.flight.model.User;
import com.situ.flight.util.Md5Utils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@Controller
public class FlightController {
    LoginDao loginDao;

    public FlightController(LoginDao loginDao) {
        this.loginDao = loginDao;
    }

    @RequestMapping("/ticket")
    public String Ticket() {

        return "Ticket";
    }

    @RequestMapping("/index")
    public String Index(Map<String, Object> map, HttpSession session) {
        User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
        session.setAttribute("login_user_name", user.getCustomer().getCustomerName());
        return "Index";
    }

    @GetMapping("/login")
    public String Login(HttpSession session, Map<String, Object> map) throws IOException, ServletException {
        String error = (String) session.getAttribute("login_error");
        if (error != null) {
            map.put("error", error);
            session.removeAttribute("login_error");
        }
        return "Login";
    }

    @PostMapping("/login")
    public String Login(User user, HttpSession session) throws IOException, ServletException {
        return login(user, session);
    }
    // 注销
    @RequestMapping("/logout")
    public String Logout(Routes rou, HttpSession session) throws IOException, ServletException {
        session.removeAttribute(Global.LOGIN_USER_KEY);
        return "redirect:/login";
    }

    private String login(User user, HttpSession session) throws IOException {

        User loginUser = new User();
        loginUser.setUsername(user.getUsername());
        loginUser.setPassword(user.getPassword());

        User dbUser = loginDao.validation(loginUser.getUsername());


        if (dbUser == null) {
            session.setAttribute("login_user", loginUser.getUsername());
            session.setAttribute("login_error", "用户名不存在");
            return "redirect:/login";
        }
        String encrypt = Md5Utils.encrypt(loginUser.getPassword() + "{" + loginUser.getUsername() + "}");

        boolean pass = encrypt.equals(dbUser.getPassword());


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


