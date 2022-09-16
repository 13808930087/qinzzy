package com.situ.jingbao.controller.admin;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.situ.jingbao.model.admin.AdminUser;
import com.situ.jingbao.model.admin.AdminUserSearchBean;
import com.situ.jingbao.service.admin.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/admin")
public class AdminUserController {

    @Autowired
    private AdminUserService adminUserService;

    @RequestMapping("/adminList")
    public String adminList(AdminUserSearchBean ausb, Map<String, Object> map) {
        PageHelper.startPage(ausb.getPageNo(), ausb.getPageSize());
        List<AdminUser> userList = adminUserService.findAll(ausb);
        PageInfo<AdminUser> pi = new PageInfo<>(userList);
        pi.calcByNavigatePages(5);
        map.put("users", userList);
        map.put("pi", pi);
        map.put("ausb", ausb);
        return "admin/admin-list";
    }
    @RequestMapping("/adminRole")
    public String adminRole(Map<String, Object> map) {
        return "admin/admin-role";
    }
    @RequestMapping("/adminCate")
    public String adminCate(Map<String, Object> map) {
        return "admin/admin-cate";
    }
    @RequestMapping("/adminRule")
    public String adminRule(Map<String, Object> map) {
        return "admin/admin-rule";
    }
    @RequestMapping("/adminAdd")
    public String adminAdd(Map<String, Object> map) {
        return "admin/admin-add";
    }
    @RequestMapping("/adminEdit")
    public String adminEdit(Map<String, Object> map) {
        return "admin/admin-edit";
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

        int rows = adminUserService.deleteByIds(ids);

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

        boolean b = adminUserService.save(user);

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

        boolean b = adminUserService.update(user);

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

        boolean b = adminUserService.updateState(id, state);

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


