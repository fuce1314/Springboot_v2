package com.fc.test.controller.admin;

import io.swagger.annotations.Api;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.fc.test.common.base.BaseController;
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.model.auto.TsysRole;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.shiro.util.ShiroUtils;
import com.github.pagehelper.PageInfo;


/**
 * 角色Controller
 * @author fuce 
 * @date: 2018年9月2日 下午8:08:21
 */
@Controller
@Api(value = "用户角色")
@RequestMapping("RoleController")
public class RoleController extends BaseController{
	
	
	//跳转页面参数
	private String prefix = "admin/role";
	
	@GetMapping("view")
	@RequiresPermissions("system:role:view")
    public String view(Model model)
    {	
		
		setTitle(model, new TitleVo("角色列表", "角色管理", false,"欢迎进入角色页面", false, false));
        return prefix + "/list";
    }
	
	/**
	 * 角色列表
	 * @param tablepar
	 * @param searchTxt 搜索字符
	 * @return
	 */
	@PostMapping("list")
	@RequiresPermissions("system:user:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchTxt){
		PageInfo<TsysRole> page=sysRoleService.list(tablepar,searchTxt) ; 
		TableSplitResult<TsysRole> result=new TableSplitResult<TsysRole>(page.getPageNum(), page.getTotal(), page.getList()); 
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
	
	
    /**
     * 角色添加
     * @param role
     * @return
     */
	@PostMapping("add")
	@RequiresPermissions("system:user:add")
	@ResponseBody
	public AjaxResult add(TsysRole role,String prem){
		int b=sysRoleService.insertRoleAndPrem(role,prem);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 删除角色
	 * @param ids
	 * @return
	 */
	@PostMapping("remove")
	@RequiresPermissions("system:user:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysRoleService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 检查角色
	 * @param TsysRole
	 * @return
	 */
	@PostMapping("checkNameUnique")
	@ResponseBody
	public int checkNameUnique(TsysRole tsysRole){
		int b=sysRoleService.checkNameUnique(tsysRole);
		if(b>0){
			return 1;
		}else{
			return 0;
		}
	}
	
	
	/**
	 * 修改角色
	 * @param id
	 * @param mmap
	 * @return
	 */
	@GetMapping("/edit/{roleId}")
    public String edit(@PathVariable("roleId") String id, ModelMap mmap)
    {
        mmap.put("TsysRole", sysRoleService.selectByPrimaryKey(id));
        return prefix + "/edit";
    }
	
	/**
     * 修改保存角色
     */
    @RequiresPermissions("system:user:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TsysRole tsysRole,String prem)
    {
    	int i=sysRoleService.updateRoleAndPrem(tsysRole,prem);
    	if(i>0) {
    		ShiroUtils.clearCachedAuthorizationInfo();
    	}
		
        return toAjax(i);
    }
}
