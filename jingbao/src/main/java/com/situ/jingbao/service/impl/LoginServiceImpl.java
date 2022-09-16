package com.situ.jingbao.service.impl;

import com.situ.jingbao.dao.LoginDAO;
import com.situ.jingbao.model.Customer;
import com.situ.jingbao.model.User;
import com.situ.jingbao.service.LoginService;
import com.situ.jingbao.util.Md5Utils;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
    private LoginDAO loginDAO;



    public LoginServiceImpl(LoginDAO loginDAO) {
        this.loginDAO = loginDAO;
    }

    public boolean check(User loginUser) {
        User dbUser = loginDAO.validation(loginUser.getUsername());
        if (dbUser == null) {
            return false;
        }
        return check(loginUser, dbUser);
    }

    public boolean check(User loginUser, User targetUser) {
        String encrypt = Md5Utils.encrypt(loginUser.getPassword() + "{" + loginUser.getUsername() + "}");
        return encrypt.equals(targetUser.getPassword());
    }

    public User validation(User loginUser) {
        return loginDAO.validation(loginUser.getUsername());
    }

    @Override
    public User findUserId(User loginUser) {
        return loginDAO.findUserId(loginUser.getCustomerId());
    }

    @Override
    public Integer register(User user) {
        String encrypt=Md5Utils.encrypt(user.getPassword() + "{" + user.getUsername() + "}");
        user.setPassword(encrypt);
        return loginDAO.register(user);
    }

    @Override
    public Integer saveCustomer(Customer customer) {
        return loginDAO.saveCustomer(customer);
    }
}
