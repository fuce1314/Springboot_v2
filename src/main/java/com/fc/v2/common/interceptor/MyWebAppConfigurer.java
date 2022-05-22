package com.fc.v2.common.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 拦截器
* @ClassName: MyWebAppConfigurer
* @author fuce
* @date 2018年6月3日
*
 */
@Configuration
public class MyWebAppConfigurer implements WebMvcConfigurer { 
	
	/** 添加拦截器 **/
	@Override
	public void addInterceptors(InterceptorRegistry registry){
		registry.addInterceptor(new MyInterceptor());
	}
	
	/** 静态资源处理 **/
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		//配置虚拟路径为项目得static下面
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
		//添加swagger
//        registry.addResourceHandler("swagger-ui.html").addResourceLocations(
//                "classpath:/META-INF/resources/");
//        registry.addResourceHandler("/webjars/**").addResourceLocations(
//                "classpath:/META-INF/resources/webjars/");
//        
        registry.addResourceHandler("doc.html").addResourceLocations("classpath:/META-INF/resources/");
        registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");

    }
	
}