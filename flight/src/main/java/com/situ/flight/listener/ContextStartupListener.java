package com.situ.flight.listener;


import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.situ.flight.common.Global;
import org.springframework.stereotype.Component;

@Component
@WebListener
public class ContextStartupListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		// 读出配置文件的内容
		// 专门读写properties文件
		Properties prop = new Properties();
		try {
			InputStream is = Thread.currentThread().getContextClassLoader().getResourceAsStream("jdbc.properties");
			prop.load(is);
			is.close();
			Global.JDBC_URL = (String)prop.getProperty("jdbc.url");
			Global.JDBC_USER = (String)prop.getProperty("jdbc.user");
			Global.JDBC_PASSWORD = (String)prop.getProperty("jdbc.password");

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
