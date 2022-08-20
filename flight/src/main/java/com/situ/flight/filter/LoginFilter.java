package com.situ.flight.filter;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.situ.flight.common.Global;
import com.situ.flight.model.User;
import org.springframework.stereotype.Component;

@Component
@WebFilter("/*")
public class LoginFilter implements Filter {
	private final Map<String, Matcher> ignoreUrls = new HashMap<>();

	public LoginFilter() {
		ignoreUrls.put("/login", Matcher.EQUALS);
		ignoreUrls.put(".css", Matcher.ENDS_WIDTH);
		ignoreUrls.put(".jpg", Matcher.ENDS_WIDTH);
		ignoreUrls.put(".png", Matcher.ENDS_WIDTH);
		ignoreUrls.put(".js", Matcher.ENDS_WIDTH);
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest)request;
	    HttpServletResponse resp = (HttpServletResponse)response;
	    HttpSession session = req.getSession();


		String path = req.getServletPath();//

		boolean match = false;
		for (String key : ignoreUrls.keySet()) {
			Matcher v=ignoreUrls.get(key);
			if (v == Matcher.EQUALS) {
				match=path.equals(key);
			}else if(v == Matcher.ENDS_WIDTH){
				match=path.endsWith(key);
			}
			
			if(match) {
				break;
			}
		}
		if (match) {
			chain.doFilter(request, response);
	    }else {
			User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
			if (user == null) {
			resp.sendRedirect(req.getContextPath() + "/login");
		} else {
			 chain.doFilter(request, response);
		}
	    }
	    
	}

	private static enum Matcher {
		EQUALS, STARTS, ENDS_WIDTH, CONTAINS
		}

}
