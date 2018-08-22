package com.fc.test.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fc.test.model.custom.Msg;

@Controller
public class HomeController {
	
	/***权限测试方法先注销****/
	/*@RequestMapping("/")
	public String index(Model model) {
		// Msg msg = new Msg("测试标题","测试内容","欢迎来到HOME页面,您拥有 ROLE_HOME 权限");
		Msg msg = new Msg("标题", "内容", "额外信息，只对管理员显示");
		model.addAttribute("msg", msg);
		return "home";
	}

	@RequestMapping("/admin")
	@ResponseBody
	public String hello() {
		return "hello admin";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}*/
	@RequestMapping("/login")
	public String login() {
		System.out.println("xxx");
		return "login";
	}
	
	// 系统首页
	@GetMapping("/index")
	public String index(ModelMap mmap) {
		System.out.println("x");
		return "admin/index";
	}
}
