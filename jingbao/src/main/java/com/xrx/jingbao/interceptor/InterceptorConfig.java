package com.xrx.jingbao.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new JingbaoInterceptor()).addPathPatterns("/user/**", "/cart/**", "/order/**");
        registry.addInterceptor(new JingbaoAdminInterceptor()).addPathPatterns("/admin/**").excludePathPatterns("/admin/login"
                , "/admin/css/**", "/admin/assets/**", "/admin/font/**","/admin/fonts/**","/admin/images/**","/admin/js/**","/admin/lib.layui/**","/admin/lib/**"
                ,"/admin/products/**","/admin/upload/**","/admin/Widget/**","/admin/user.json");
    }
}
