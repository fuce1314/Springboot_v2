package com.fc.test.common.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import com.fc.test.common.conf.V2Config;

/**
 * 拦截器
* @ClassName: MyWebAppConfigurer
* @author fuce
* @date 2018年6月3日
*
 */
@Configuration
public class MyWebAppConfigurer  extends  WebMvcConfigurationSupport  {
	
	private static Logger logger=LoggerFactory.getLogger(WebMvcConfigurationSupport.class);
	/**
     * 默认上传的地址
     */
    private static String defaultBaseDir = V2Config.getDefaultBaseDir();
    
    /**
     * 静态文件夹后目录
     */
    private static String isrootDir=V2Config.getIsroot_dir();
    
    /**
     * 是否上传到static
     */
    private static  String isstatic=V2Config.getIsstatic();
	
	
	/** 解决跨域问题 **/
	@Override
	public void addCorsMappings(CorsRegistry registry){
		/*
			registry.addMapping("/**")
			// 设置允许跨域请求的域名
			.allowedOrigins("*")
			// 是否允许证书
			.allowCredentials(true)
			// 设置允许的方法
			.allowedMethods("GET", "POST", "DELETE", "PUT")
			// 设置允许的header属性
			.allowedHeaders("*")
			// 跨域允许时间
			.maxAge(3600);
			super.addCorsMappings(registry);
		*/
	}
	
	/** 添加拦截器 **/
	@Override
	protected void addInterceptors(InterceptorRegistry registry){
		registry.addInterceptor(new MyInterceptor());
		super.addInterceptors(registry);
	}
	
	/** 这里配置视图解析器 **/
	@Override
	protected void configureViewResolvers(ViewResolverRegistry registry){
		super.configureViewResolvers(registry);
	}
	
	/** 配置内容裁决的一些选项 **/
	@Override
	protected void configureContentNegotiation(ContentNegotiationConfigurer configurer){
		super.configureContentNegotiation(configurer);
	}
	
	/** 视图跳转控制器 **/
	@Override
	protected void addViewControllers(ViewControllerRegistry registry) {
		
		super.addViewControllers(registry);
	}
	
	
	/** 静态资源处理 **/
	@Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
		//配置虚拟路径为项目得static下面
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
        if(!"Y".equals(isstatic)) {
        	 //配置上传路径为D盘
            registry.addResourceHandler("/static/file_upload/**").addResourceLocations("file:"+defaultBaseDir);
            logger.info("初始化文件上传路径为项目【"+defaultBaseDir+"】路径");
        }else {
        	logger.info("初始化文件上传路径为项目【"+isrootDir+"】路径");
        }
       
    }
	/** 默认静态资源处理器 **/
	
	protected void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		//super.configureDefaultServletHandling(configurer);
		//configurer.enable("stati");
		configurer.enable();
	}
	
	
	
	
}
