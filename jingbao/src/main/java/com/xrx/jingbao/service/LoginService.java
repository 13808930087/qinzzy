package com.xrx.jingbao.service;

import com.xrx.jingbao.model.Customer;
import com.xrx.jingbao.model.User;

public interface LoginService {


	boolean check(User loginUser) ;

	boolean check(User loginUser, User targetUser) ;

	User validation(User loginUser) ;
	User findUserId(User loginUser) ;

	 Integer register(User user);
	 Integer saveCustomer(Customer customer);
}
