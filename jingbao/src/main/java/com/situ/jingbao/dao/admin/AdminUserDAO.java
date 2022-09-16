package com.situ.jingbao.dao.admin;
import com.situ.jingbao.model.admin.AdminUser;
import com.situ.jingbao.model.admin.AdminUserSearchBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AdminUserDAO {
    /**
     * 查询商城管理员用户
     *
     * @param username
     * @return
     */
    AdminUser findByUsername(String username);

    List<AdminUser> findAll(@Param("ausb")AdminUserSearchBean ausb);

    int deleteByIds(@Param("ids") Integer[] ids);

    int save(@Param("user")AdminUser user);

    int update(@Param("user")AdminUser user);

    int updateState(@Param("id") Integer id, @Param("state") boolean state);
}
