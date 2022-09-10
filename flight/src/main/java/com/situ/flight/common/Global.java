package com.situ.flight.common;

import java.sql.Connection;

import com.situ.flight.util.JdbcUtils;

public class Global {
	public static final String LOGIN_USER_KEY = "#login_user";
	public static final String LIST_ADD = "#list_add";
	public static String JDBC_URL="jdbc:mysql://localhost:3306/jingbao?characterEncoding=UTF-8&useSSL=false&autoReconnect=true&serverTimezone=Asia/Shanghai&allowPublicKeyRetrieval=true";
	public static String JDBC_USER="root";
	public static String JDBC_PASSWORD="123456";

	public static Connection getConnection() {
		return JdbcUtils.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
	  }

}
