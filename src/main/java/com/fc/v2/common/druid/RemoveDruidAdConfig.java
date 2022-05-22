package com.fc.v2.common.druid;

import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceAutoConfigure;
import com.alibaba.druid.spring.boot.autoconfigure.properties.DruidStatProperties;
import com.alibaba.druid.support.http.WebStatFilter;
import com.alibaba.druid.support.spring.stat.DruidStatInterceptor;
import com.alibaba.druid.util.Utils;

import org.springframework.aop.support.DefaultPointcutAdvisor;
import org.springframework.aop.support.JdkRegexpMethodPointcut;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.autoconfigure.condition.ConditionalOnWebApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

import javax.servlet.*;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;


/**
 * 类名称:RemoveDruidAdConfig
 * 类描述: 去除druid底部的广告配置类
 *
 * @author: taohongchao
 * 创建时间:2019/2/15 13:14
 * Version 1.0
 */

@Configuration
@ConditionalOnWebApplication
@AutoConfigureAfter(DruidDataSourceAutoConfigure.class)
@ConditionalOnProperty(name = "spring.datasource.druid.stat-view-servlet.enabled", havingValue = "true", matchIfMissing = true)
public class RemoveDruidAdConfig {


    /**
     * 方法名: removeDruidAdFilterRegistrationBean
     * 方法描述:  除去页面底部的广告
     * @param properties
     * @return org.springframework.boot.web.servlet.FilterRegistrationBean
     * @throws
     */
    @SuppressWarnings("rawtypes")
	@Bean
    public FilterRegistrationBean removeDruidAdFilterRegistrationBean(DruidStatProperties properties) {
        // 获取web监控页面的参数
        DruidStatProperties.StatViewServlet config = properties.getStatViewServlet();
        // 提取common.js的配置路径
        String pattern = config.getUrlPattern() != null ? config.getUrlPattern() : "/druid/*";
        String commonJsPattern = pattern.replaceAll("\\*", "js/common.js");

        final String filePath = "support/http/resources/js/common.js";

        //创建filter进行过滤
        Filter filter = new Filter() {
            @Override
            public void init(FilterConfig filterConfig) throws ServletException {
            }

            @Override
            public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
                chain.doFilter(request, response);
                // 重置缓冲区，响应头不会被重置
                response.resetBuffer();
                // 获取common.js
                String text = Utils.readFromResource(filePath);
                // 正则替换banner, 除去底部的广告信息
                text = text.replaceAll("<a.*?banner\"></a><br/>", "");
                text = text.replaceAll("powered.*?shrek.wang</a>", "");
                response.getWriter().write(text);
            }

            @Override
            public void destroy() {
            }
        };
        FilterRegistrationBean<Filter> registrationBean = new FilterRegistrationBean<Filter>();
        registrationBean.setFilter(filter);
        registrationBean.addUrlPatterns(commonJsPattern);
        return registrationBean;
    }
    /*********Spring Boot 配置Druid关联URI监控******/
    @Bean
    public FilterRegistrationBean<WebStatFilter> webStatFilter(){
    	 FilterRegistrationBean<WebStatFilter> bean = new FilterRegistrationBean<WebStatFilter>();
    	 bean.setFilter(new WebStatFilter());

         //exclusions：设置哪些请求进行过滤排除掉，从而不进行统计
         Map<String, String> initParams = new HashMap<>(16);
         initParams.put("exclusions", "*.js,*.css,/druid/*,bc/*");
         bean.setInitParameters(initParams);

         //"/*" 表示过滤所有请求
         bean.setUrlPatterns(Collections.singletonList("/*"));
         return bean;
    	 
    }
    
    /*********Spring Boot 配置Druid关联spring监控******/
    @Bean
	public JdkRegexpMethodPointcut druidStatPointcut() {
		JdkRegexpMethodPointcut pointcut = new JdkRegexpMethodPointcut();
		pointcut.setPattern("com.fc.v2.mapper.*");
		return pointcut;
	}

	@Bean
	public DruidStatInterceptor druidStatInterceptor() {
		DruidStatInterceptor dsInterceptor = new DruidStatInterceptor();
		return dsInterceptor;
	}

	@Bean
	public DefaultPointcutAdvisor druidStatAdvisor(DruidStatInterceptor druidStatInterceptor, JdkRegexpMethodPointcut druidStatPointcut) {
		DefaultPointcutAdvisor defaultPointAdvisor = new DefaultPointcutAdvisor();
		defaultPointAdvisor.setPointcut(druidStatPointcut);
		defaultPointAdvisor.setAdvice(druidStatInterceptor);
		return defaultPointAdvisor;
	}
}

