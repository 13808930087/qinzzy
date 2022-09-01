package com.situ.jingbao.service;

import com.situ.jingbao.dao.LoginDao;
import com.situ.jingbao.model.User;
import com.situ.jingbao.util.Md5Utils;
import org.apache.ibatis.annotations.Param;

public interface LoginService {


	boolean check(User loginUser) ;

	boolean check(User loginUser, User targetUser) ;

	User validation(User loginUser) ;

	int register(User user);
}
