package com.fc.test.shiro.config;

import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.cache.MemoryConstrainedCacheManager;
import org.apache.shiro.mgt.RememberMeManager;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.CookieRememberMeManager;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.Cookie;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerExceptionResolver;

import com.fc.test.common.exception.GlobalExceptionResolver;
import com.fc.test.shiro.service.MyShiroRealm;

import at.pollux.thymeleaf.shiro.dialect.ShiroDialect;


/**
 * 权限配置文件
 * @ClassName: ShiroConfiguration
 * @author fuce
 * @date 2018年8月25日
 *
 */
@Configuration
public class ShiroConfig {

	/**
	 * 这是shiro的大管家，相当于mybatis里的SqlSessionFactoryBean
	 * @param securityManager
	 * @return
	 */
	@Bean
	public ShiroFilterFactoryBean shiroFilterFactoryBean(org.apache.shiro.mgt.SecurityManager securityManager) {
		ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
		//登录
		shiroFilterFactoryBean.setLoginUrl("/login");
		//首页
		shiroFilterFactoryBean.setSuccessUrl("/index");
		//错误页面，认证不通过跳转
		shiroFilterFactoryBean.setUnauthorizedUrl("/error/403");
		//页面权限控制
		shiroFilterFactoryBean.setFilterChainDefinitionMap(ShiroFilterMapFactory.shiroFilterMap());

		shiroFilterFactoryBean.setSecurityManager(securityManager);
		return shiroFilterFactoryBean;
	}
	
	/**
	 * web应用管理配置
	 * @param shiroRealm
	 * @param cacheManager
	 * @param manager
	 * @return
	 */
	@Bean
	public DefaultWebSecurityManager securityManager(Realm shiroRealm,CacheManager cacheManager,RememberMeManager manager) {
		DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
		securityManager.setCacheManager(cacheManager);
		securityManager.setRememberMeManager(manager);//记住Cookie
		securityManager.setRealm(shiroRealm);
		return securityManager;
	}
	
	/**
	 * 加密算法
	 * @return
	 */
	@Bean
	public HashedCredentialsMatcher hashedCredentialsMatcher() {
		HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
		hashedCredentialsMatcher.setHashAlgorithmName("MD5");//采用MD5 进行加密
		hashedCredentialsMatcher.setHashIterations(1);//加密次数
		return hashedCredentialsMatcher;
	}
	
	/**
	 * 记住我的配置
	 * @return
	 */
	@Bean
	public RememberMeManager rememberMeManager() {
		Cookie cookie = new SimpleCookie("rememberMe");
        cookie.setHttpOnly(true);//通过js脚本将无法读取到cookie信息
        cookie.setMaxAge(60 * 60 * 24);//cookie保存一天
		CookieRememberMeManager manager=new CookieRememberMeManager();
		manager.setCookie(cookie);
		return manager;
	}
	/**
	 * 缓存配置
	 * @return
	 */
	@Bean
	public CacheManager cacheManager() {
		MemoryConstrainedCacheManager cacheManager=new MemoryConstrainedCacheManager();//使用内存缓存
		return cacheManager;
	}
	
	/**
	 * 配置realm，用于认证和授权
	 * @param hashedCredentialsMatcher
	 * @return
	 */
	@Bean
	public AuthorizingRealm shiroRealm(HashedCredentialsMatcher hashedCredentialsMatcher) {
		MyShiroRealm shiroRealm = new MyShiroRealm();
		//校验密码用到的算法
		shiroRealm.setCredentialsMatcher(hashedCredentialsMatcher);
		return shiroRealm;
	}
	
	/**
	 * 启用shiro方言，这样能在页面上使用shiro标签
	 * @return
	 */
	@Bean
    public ShiroDialect shiroDialect() {
        return new ShiroDialect();
    }
	
	/**
     * 启用shiro注解
     *加入注解的使用，不加入这个注解不生效
     */
    @Bean
    public AuthorizationAttributeSourceAdvisor getAuthorizationAttributeSourceAdvisor(org.apache.shiro.mgt.SecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor advisor = new AuthorizationAttributeSourceAdvisor();
        advisor.setSecurityManager(securityManager);
        return advisor;
    }
    
    /**
     * 注册全局异常处理
     * @return
     */
    @Bean(name = "exceptionHandler")
    public HandlerExceptionResolver handlerExceptionResolver(){
        return new GlobalExceptionResolver();
    }

}
