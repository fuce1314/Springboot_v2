package com.fc.test.model.custom;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

import com.fc.test.controller.admin.User;
import com.fc.test.model.auto.TsysUser;

public class SecurityUser  extends TsysUser{
	private static final long serialVersionUID = -254576396255401176L;
	 
	//这里可以增加自定义参数
	/**
	 * private int age;
	 * private int number;
	 * eg.
	 */
	/**年龄*/
	private int age;
	
	/**
	 * 有参构造方法，可以扩充参数
	 * @param username      基本参数
	 * @param password      基本参数
	 * @param authorities   基本参数-表示登陆权限的字符串集合-比如ROLE_ADMIN，可以自定义
	 */
	public SecurityUser(String username, String password, Collection<? extends GrantedAuthority> authorities,int age) {
		System.out.println(username);
		System.out.println(password);
		this.age=age;
	}


}
