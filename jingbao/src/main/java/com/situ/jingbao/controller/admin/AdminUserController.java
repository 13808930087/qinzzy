package com.situ.jingbao.controller.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.situ.jingbao.common.Global;
import com.situ.jingbao.model.User;
import com.situ.jingbao.model.admin.AdminUser;
import com.situ.jingbao.model.admin.AdminUserSearchBean;
import com.situ.jingbao.service.admin.AdminUserService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/admin")
public class AdminUserController {
    private static final String ADMIN_USER_LOGIN_ERROR_KEY = "#admin_user_login_error";
    private AdminUserService userService;

    public AdminUserController(AdminUserService userService) {
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

    @RequestMapping("/user/list")
    public String list(AdminUserSearchBean ausb, Map<String, Object> map) {

        PageHelper.startPage(ausb.getPageNo(), ausb.getPageSize());
        List<AdminUser> userList = userService.findAll(ausb);


        PageInfo<AdminUser> pi = new PageInfo<>(userList);
        pi.calcByNavigatePages(5);
        map.put("users", userList);
        map.put("pi", pi);
        map.put("ausb", ausb);


        return "admin/user/list";
    }

    @PostMapping(value = "/user/delete", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> deleteByIds(Integer[] ids) {
        Map<String, Object> json = new HashMap<>();

        if (ids == null || ids.length == 0) {
            json.put("success", false);
            json.put("error", "必须至少提供一个要删除的用户编号");
            return ResponseEntity.badRequest().body(json);
        }

        int rows = userService.deleteByIds(ids);

        json.put("success", true);
        return ResponseEntity.ok(json);

    }

    @PostMapping(value = "/user/add", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> add(AdminUser user) {
        Map<String, Object> json = new HashMap<>();

        //后台校验
        if (user.getPassword() == null || user.getPassword().trim().equals("")) {
            json.put("success", false);
            json.put("error", "密码不可为空");
            return ResponseEntity.ok(json);
        }

        boolean b = userService.save(user);

        if (b) {
            json.put("success", true);
            return ResponseEntity.ok(json);
        } else {
            json.put("success", false);
            json.put("error", "保存用户失败");
            return ResponseEntity.ok(json);
        }
    }


    @PostMapping(value = "/user/edit", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> edit(AdminUser user) {
        Map<String, Object> json = new HashMap<>();

        //后台校验
        if (user.getId() == null) {
            json.put("success", false);
            json.put("error", "用户编号不可为空");
            return ResponseEntity.ok(json);
        }

        if (user.getPassword() == null || user.getPassword().trim().equals("")) {
            json.put("success", false);
            json.put("error", "密码不可为空");
            return ResponseEntity.ok(json);
        }

        boolean b = userService.update(user);

        if (b) {
            json.put("success", true);
            return ResponseEntity.ok(json);
        } else {
            json.put("success", false);
            json.put("error", "修改用户失败");
            return ResponseEntity.ok(json);
        }
    }

    //修改启用或停用状态
    @PostMapping(value = "/user/editState", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> editState(Integer id, boolean state) {
        Map<String, Object> json = new HashMap<>();

        boolean b = userService.updateState(id, state);

        if (b) {
            json.put("success", true);
            return ResponseEntity.ok(json);
        } else {
            json.put("success", false);
            json.put("error", "修改用户状态失败");
            return ResponseEntity.ok(json);
        }
    }
}


