package com.xrx.jingbao.service.admin.impl;


import com.xrx.jingbao.dao.admin.AdminUserDAO;
import com.xrx.jingbao.model.admin.AdminUser;
import com.xrx.jingbao.model.admin.AdminUserSearchBean;
import com.xrx.jingbao.service.admin.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class AdminUserServiceImpl implements AdminUserService {
    @Autowired
    private AdminUserDAO adminUserDAO;

    @Override
    public AdminUser findByUsername(String username) {
        return adminUserDAO.findByUsername(username);
    }

    @Override
    public List<AdminUser> findAll(AdminUserSearchBean ausb) {

            return adminUserDAO.findAll(ausb);
    }

    @Override
    public int deleteByIds(Integer[] ids) {
        return adminUserDAO.deleteByIds(ids);
    }

    @Override
    public boolean save(AdminUser user) {
        user.setCreatedTime(LocalDateTime.now());

        String meta = user.getPassword() + "{" + user.getUsername() + "}";
        String encrypted = DigestUtils.md5DigestAsHex(meta.getBytes(StandardCharsets.UTF_8));
        user.setPassword(encrypted);

        return adminUserDAO.save(user) > 0;
    }

    @Override
    public boolean update(AdminUser user) {
        String meta = user.getPassword() + "{" + user.getUsername() + "}";
        String encrypted = DigestUtils.md5DigestAsHex(meta.getBytes(StandardCharsets.UTF_8));
        user.setPassword(encrypted);

        return adminUserDAO.update(user) > 0;
    }

    @Override
    public boolean updateState(Integer id, boolean state) {
        return adminUserDAO.updateState(id, state) > 0;
    }
}
