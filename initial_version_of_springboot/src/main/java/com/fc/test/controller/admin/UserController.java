package com.fc.test.controller.admin;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fc.test.common.base.BaseController;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.SysUserService;

import io.swagger.annotations.Api;

@Controller
@RequestMapping("UserController")
@Api(value = "用户数据")
public class UserController extends BaseController{
	@Autowired
	private SysUserService sysUserService; //系统用户
	private String prefix = "admin/user";
	
	
	@GetMapping("view")
	@RequiresPermissions("system:user:view")
    public String view(Model model)
    {	
		
		setTitle(model, new TitleVo("用户列表", "用户管理", true,"欢迎进入用户页面", true, false));
		
        return prefix + "/list";
    }
	
	@PostMapping("list")
	@RequiresPermissions("system:user:list")
	@ResponseBody
	public Object list(){
		
		return sysUserService.list(1,10);
	}
}
