package com.situ.jingbao.listener;



import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.springframework.stereotype.Component;

@Component
@WebListener
public class ContextStartupListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		// 读出配置文件的内容
		// 专门读写properties文件
		System.out.println("服务器启动");

	}

}
