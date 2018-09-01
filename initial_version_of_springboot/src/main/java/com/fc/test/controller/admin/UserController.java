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
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.model.auto.TsysUser;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.SysUserService;
import com.github.pagehelper.PageInfo;

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
	public Object list(Tablepar tablepar,String username){
		PageInfo<TsysUser> page=sysUserService.list(tablepar,username) ; 
		TableSplitResult<TsysUser> result=new TableSplitResult<TsysUser>(page.getPageNum(), page.getTotal(), page.getList()); 
		return  result;
	}
	
	/**
     * 新增角色
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
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
	
	@PostMapping("remove")
	@RequiresPermissions("system:user:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysUserService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	@PostMapping("checkLoginNameUnique")
	@ResponseBody
	public int checkLoginNameUnique(TsysUser tsysUser){
		int b=sysUserService.checkLoginNameUnique(tsysUser);
		if(b>0){
			return 1;
		}else{
			return 0;
		}
	}
	
	
}
