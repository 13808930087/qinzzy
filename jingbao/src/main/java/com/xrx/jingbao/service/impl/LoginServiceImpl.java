package com.xrx.jingbao.service.impl;

import com.xrx.jingbao.dao.LoginDAO;
import com.xrx.jingbao.model.Customer;
import com.xrx.jingbao.model.User;
import com.xrx.jingbao.service.LoginService;
import com.xrx.jingbao.util.Md5Utils;
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
