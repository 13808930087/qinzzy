package com.situ.jingbao.service.impl;

import com.situ.jingbao.dao.LoginDao;
import com.situ.jingbao.model.Customer;
import com.situ.jingbao.model.User;
import com.situ.jingbao.service.LoginService;
import com.situ.jingbao.util.Md5Utils;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
    private LoginDao loginDao;



    public LoginServiceImpl(LoginDao loginDao) {
        this.loginDao = loginDao;
    }

    public boolean check(User loginUser) {
        User dbUser = loginDao.validation(loginUser.getUsername());
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
        return loginDao.validation(loginUser.getUsername());
    }

    @Override
    public User getId(User loginUser) {
        return loginDao.getId(loginUser.getCustomerId());
    }

    @Override
    public int register(User user) {
        String encrypt=Md5Utils.encrypt(user.getPassword() + "{" + user.getUsername() + "}");
        user.setPassword(encrypt);
        return loginDao.register(user);
    }

    @Override
    public int addCustomer(Customer customer) {
        return loginDao.addCustomer(customer);
    }
}
