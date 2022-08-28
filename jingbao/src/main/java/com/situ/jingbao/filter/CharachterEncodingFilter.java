package com.situ.jingbao.filter;

import org.springframework.stereotype.Component;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@Component
@WebFilter("/*")
public class CharachterEncodingFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		 HttpServletRequest req = (HttpServletRequest)request;
	        HttpServletResponse resp = (HttpServletResponse)response;
	        req.setCharacterEncoding("utf-8");
	        resp.setCharacterEncoding("utf-8");
	        resp.setContentType("text/html;charset=utf-8");
	        chain.doFilter(request,response);
	}
}
