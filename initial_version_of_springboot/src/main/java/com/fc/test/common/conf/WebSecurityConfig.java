package com.fc.test.common.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;

import com.fc.test.common.interceptor.MyFilterSecurityInterceptor;
import com.fc.test.service.CustomUserService;


@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
    private MyFilterSecurityInterceptor myFilterSecurityInterceptor;
	/**
	 * 注册UserDetailsService 的bean
	 * @return
	 */
	    @Bean
	    UserDetailsService customUserService(){ //
	        return new CustomUserService();
	    }
	    
	    /**
	     * 添加自定义的userDetailsService认证
	     */
	    @Override
	    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	    	
	        auth.userDetailsService(customUserService()).passwordEncoder(new MyPasswordEncoder()); //user Details Service验证

	    }

	    @Override
	    protected void configure(HttpSecurity http) throws Exception {
	    	 http.authorizeRequests().antMatchers("/").permitAll()//允许访问首页
             .antMatchers("/static/**").permitAll()
             .antMatchers("/webjars/**","/swagger-resources/**","/v2/**","/swagger-ui.html","/api-docs").permitAll()
	    	 .antMatchers("/api/**").permitAll()//访问API下无需登录认证权限
	    	 .antMatchers("/login").permitAll()//访问API下无需登录认证权限
	    	  .antMatchers("/error/**").permitAll()
	    	 .anyRequest().authenticated();//允许验证过的用户访问
			// 自定义登录页面
			 http.formLogin().loginPage("/login")   //这个/必须加上，配置登录url
			 //.loginProcessingUrl("/index")//登录处理的请求
			 .and().logout().permitAll() ;//用户退出
	    	 // swagger end
			 
	    	
			 http.addFilterBefore(myFilterSecurityInterceptor, FilterSecurityInterceptor.class);
	    }
}
