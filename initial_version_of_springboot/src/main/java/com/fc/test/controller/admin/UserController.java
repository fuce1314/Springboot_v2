package com.fc.test.controller.admin;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.fc.test.common.base.BaseController;
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.model.auto.TsysUser;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.SysUserService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

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
	public Object list(@RequestBody Tablepar tablepar){
		PageInfo<TsysUser> page=sysUserService.list(tablepar.getPageNum(), tablepar.getPageSize()) ; 
		TableSplitResult<TsysUser> result=new TableSplitResult<TsysUser>(page.getNavigatePages(), page.getTotal(), page.getList()); 
		return  result;
	}
	
	@PostMapping("add")
	@RequiresPermissions("system:user:add")
	@ResponseBody
	public AjaxResult add(TsysUser user){
		int b=sysUserService.insertSelective(user);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	

	
	
	
}
