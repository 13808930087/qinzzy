package com.xrx.jingbao.interceptor;

import com.xrx.jingbao.common.Global;
import com.xrx.jingbao.model.User;
import com.xrx.jingbao.model.admin.AdminUser;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

public class JingbaoAdminInterceptor implements HandlerInterceptor {
    private static final Log log = LogFactory.getLog(JingbaoAdminInterceptor.class);
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        // TODO Auto-generated method stub
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        String path = req.getServletPath();
        session.setAttribute("servletPath",request.getServletPath());
        AdminUser user = (AdminUser) session.getAttribute(Global.LOGIN_ADMIN_USER_KEY);
            if (user == null) {
                resp.sendRedirect(req.getContextPath() + "/admin/login");
                return false;
            } else {
              return true;
        }
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
