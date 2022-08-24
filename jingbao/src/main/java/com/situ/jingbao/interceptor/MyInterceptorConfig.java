package com.situ.jingbao.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyInterceptorConfig implements WebMvcConfigurer {




    @Override
    public void addInterceptors(InterceptorRegistry registry) {

        registry.addInterceptor(new JingbaoInterceptor()).addPathPatterns("/jingbao/**");
    }
}
