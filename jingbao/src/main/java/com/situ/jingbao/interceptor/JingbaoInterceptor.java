package com.situ.jingbao.interceptor;

import com.situ.jingbao.common.Global;
import com.situ.jingbao.model.User;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

public class JingbaoInterceptor implements HandlerInterceptor {
    private final Map<String, JingbaoInterceptor.Matcher> ignoreUrls = new HashMap<>();
    private static final Log log = LogFactory.getLog(JingbaoInterceptor.class);
    private static enum Matcher {
        EQUALS, STARTS_WIDTH, ENDS_WIDTH, CONTAINS
    }
//    public JingbaoInterceptor() {
//        ignoreUrls.put("/index", JingbaoInterceptor.Matcher.EQUALS);
//        ignoreUrls.put("/register", JingbaoInterceptor.Matcher.EQUALS);
//        ignoreUrls.put("/login", JingbaoInterceptor.Matcher.EQUALS);
//        ignoreUrls.put(".css", JingbaoInterceptor.Matcher.ENDS_WIDTH);
//        ignoreUrls.put(".woff2", JingbaoInterceptor.Matcher.ENDS_WIDTH);
//        ignoreUrls.put(".woff", JingbaoInterceptor.Matcher.ENDS_WIDTH);
//        ignoreUrls.put(".ttf", JingbaoInterceptor.Matcher.ENDS_WIDTH);
//        ignoreUrls.put(".jpg", JingbaoInterceptor.Matcher.ENDS_WIDTH);
//        ignoreUrls.put(".png", JingbaoInterceptor.Matcher.ENDS_WIDTH);
//        ignoreUrls.put(".js", JingbaoInterceptor.Matcher.ENDS_WIDTH);
//        ignoreUrls.put(".gif", JingbaoInterceptor.Matcher.ENDS_WIDTH);
//    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        // TODO Auto-generated method stub
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();


        String path = req.getServletPath();//

//        boolean match = false;
//        for (String key : ignoreUrls.keySet()) {
//            JingbaoInterceptor.Matcher v = ignoreUrls.get(key);
//            if (v == JingbaoInterceptor.Matcher.EQUALS) {
//                match = path.equals(key);
//            } else if (v == JingbaoInterceptor.Matcher.ENDS_WIDTH) {
//                match = path.endsWith(key);
//            } else if (v == JingbaoInterceptor.Matcher.STARTS_WIDTH) {
//                match = path.startsWith(key);
//            }
//
//            if (match) {
//                break;
//            }
//        }
//        if (match) {
//            return true;
//        } else {
            User user = (User) session.getAttribute(Global.LOGIN_USER_KEY);
            if (user == null) {
                resp.sendRedirect(req.getContextPath() + "/login");
            } else {
              return true;
//            }
        }
        return true;
    }


    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        log.info("执行完方法之后进执行(Controller方法调用之后)，但是此时还没进行视图渲染");
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        log.info("整个请求都处理完咯，DispatcherServlet也渲染了对应的视图咯，此时我可以做一些清理的工作了");
    }
}
