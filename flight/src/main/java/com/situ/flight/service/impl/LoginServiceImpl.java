package com.situ.flight.service.impl;

import com.situ.flight.dao.LoginDao;
import com.situ.flight.model.User;
import com.situ.flight.service.LoginService;
import com.situ.flight.util.Md5Utils;
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
}
