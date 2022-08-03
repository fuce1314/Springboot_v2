package com.fc.v2.satoken;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.alibaba.fastjson.JSON;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.satoken.dialect.SaTokenDialect;

import cn.dev33.satoken.context.SaHolder;
import cn.dev33.satoken.exception.NotLoginException;
import cn.dev33.satoken.filter.SaServletFilter;
import cn.dev33.satoken.interceptor.SaAnnotationInterceptor;
import cn.dev33.satoken.router.SaRouter;
import cn.dev33.satoken.stp.StpUtil;

/**
 * Sa-Token 配置 
 * @author kong
 *
 */
@Configuration
public class SaTokenConfigure implements WebMvcConfigurer {

	/**
	 * 注册 Sa-Token 的注解拦截器，打开注解式鉴权功能 
	 */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new SaAnnotationInterceptor()).addPathPatterns("/**");    
    }
	
    /**
     * 注册 [Sa-Token全局过滤器] 
     */
    @Bean
    public SaServletFilter getSaServletFilter() {
        return new SaServletFilter()

                // 指定 拦截路由
                .addInclude("/**")
                
                // 指定 放行路由
                .addExclude(
                		"/favicon.ico", "/static/**", 
            			// 对所有用户认证
            			"/admin/login",
            			//手机登录 
            			"/admin/API/login",
            			// 放验证码
            			"/captcha/**",
            			// 释放 druid 监控画面
            			"/druid/**", 
            			// 释放websocket请求
            			"/websocket",
            			// 前端
            			"/", "/index", 
            			// 任务调度暂时放开
            			"/quartz/**",
            			// 开放APicontroller
            			"/ApiController/**",
            			"/oss/**", "/druid/**"
                		)

                // 认证函数: 每次请求执行 
                .setAuth(r -> {
                	SaRouter.match("/**", () -> StpUtil.checkLogin());
                })

                // 异常处理函数：每次认证函数发生异常时执行此函数 
                .setError(e -> {
                	// e.printStackTrace();
                    if(e instanceof NotLoginException) {
                    	SaHolder.getResponse().redirect("/admin/login");
                    }
                    return JSON.toJSONString(AjaxResult.error(e.getMessage()));
                })

                // 前置函数：在每次认证函数之前执行
                .setBeforeAuth(r -> {
                	// ---------- 设置跨域响应头 ----------
        			SaHolder.getResponse()
        			// 允许指定域访问跨域资源
        			.setHeader("Access-Control-Allow-Origin", "*")
        			// 允许所有请求方式
        			.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE")
        			// 有效时间
        			.setHeader("Access-Control-Max-Age", "3600")
        			// 允许的header参数
        			.setHeader("Access-Control-Allow-Headers", "x-requested-with,satoken");
        			
        			// 如果是预检请求，直接返回
        			if ("OPTIONS".equals(SaHolder.getRequest().getMethod())) {
        				System.out.println("=======================浏览器发来了OPTIONS预检请求==========");
        				SaRouter.back();
        			}
                })
                ;
    }
    
    /**
     * 注册 Sa-Token 标签方言 
     */
    @Bean
    public SaTokenDialect saTokenDialect() {
        return new SaTokenDialect();
    }
    
}
