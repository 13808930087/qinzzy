package com.xrx.jingbao.service.admin;

import com.xrx.jingbao.model.admin.AdminUser;
import com.xrx.jingbao.model.admin.AdminUserSearchBean;


import java.util.List;

public interface AdminUserService {
    /**
     * 根据用户名获取一个唯一用户
     *
     * @param username
     * @return
     */
    AdminUser findByUsername(String username);

    List<AdminUser> findAll(AdminUserSearchBean ausb);

    int deleteByIds(Integer[] ids);

    boolean save(AdminUser user);

    boolean update(AdminUser user);

    boolean updateState(Integer id, boolean state);

}
