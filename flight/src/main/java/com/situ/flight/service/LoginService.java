package com.situ.flight.service;

import com.situ.flight.dao.LoginDao;
import com.situ.flight.model.User;
import com.situ.flight.util.Md5Utils;

public interface LoginService {


	public boolean check(User loginUser) ;

	public boolean check(User loginUser, User targetUser) ;

	public User validation(User loginUser) ;
}
