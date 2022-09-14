package com.situ.jingbao.service.admin.impl;

import com.situ.jingbao.dao.admin.AdminUserDAO;
import com.situ.jingbao.model.admin.AdminUser;
import com.situ.jingbao.model.admin.AdminUserSearchBean;
import com.situ.jingbao.service.admin.AdminUserService;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class AdminUserServiceImpl implements AdminUserService {
    private final AdminUserDAO dao;

    public AdminUserServiceImpl(AdminUserDAO dao) {
        this.dao = dao;
    }

    @Override
    public AdminUser findByUsername(String username) {
        return dao.findByUsername(username);
    }

    @Override
    public List<AdminUser> findAll(AdminUserSearchBean ausb) {
        return dao.findAll(ausb);
    }

    @Override
    public int deleteByIds(Integer[] ids) {
        return dao.deleteByIds(ids);
    }

    @Override
    public boolean save(AdminUser user) {
        user.setCreatedTime(LocalDateTime.now());

        String meta = user.getPassword() + "{" + user.getUsername() + "}";
        String encrypted = DigestUtils.md5DigestAsHex(meta.getBytes(StandardCharsets.UTF_8));
        user.setPassword(encrypted);

        return dao.save(user) > 0;
    }

    @Override
    public boolean update(AdminUser user) {
        String meta = user.getPassword() + "{" + user.getUsername() + "}";
        String encrypted = DigestUtils.md5DigestAsHex(meta.getBytes(StandardCharsets.UTF_8));
        user.setPassword(encrypted);

        return dao.update(user) > 0;
    }

    @Override
    public boolean updateState(Integer id, boolean state) {
        return dao.updateState(id, state) > 0;
    }
}
