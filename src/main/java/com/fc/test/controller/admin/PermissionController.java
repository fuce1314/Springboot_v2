package com.fc.test.controller.admin;

import java.util.List;

import com.fc.test.common.base.BaseController;
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.model.auto.TsysPermission;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 权限Controller
 * @author fuce 
 * @date: 2018年9月2日 下午8:08:21
 */
@Controller
@Api(value = "权限")
@RequestMapping("PermissionController")
public class PermissionController  extends BaseController{
	

	
	//跳转页面参数
	private String prefix = "admin/permission";
	
	@GetMapping("view")
	@RequiresPermissions("system:permission:view")
    public String view(ModelMap model)
    {	
		String str="权限";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	
	/**
	 * 权限列表
	 * @param tablepar
	 * @param searchTxt 搜索字符
	 * @return
	 */
	@PostMapping("list")
	@RequiresPermissions("system:permission:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchTxt){
		PageInfo<TsysPermission> page= sysPermissionService.list(tablepar, searchTxt) ;
		TableSplitResult<TsysPermission> result=new TableSplitResult<TsysPermission>(page.getPageNum(), page.getTotal(), page.getList());
		return  result;
	}
	/**
	 * 权限列表
	 * @param tablepar
	 * @param searchTxt 搜索字符
	 * @return
	 */
	@PostMapping("list2")
	@ResponseBody
	public Object list2(Tablepar tablepar,String searchTxt){
		List<TsysPermission> page= sysPermissionService.list2(searchTxt) ;
		return  page;
	}
	/**
     * 新增权限
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }
	
	
    /**
     * 权限添加
     * @param role
     * @return
     */
	@PostMapping("add")
	@RequiresPermissions("system:permission:add")
	@ResponseBody
	public AjaxResult add(TsysPermission role){
		int b= sysPermissionService.insertSelective(role);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 删除权限
	 * @param ids
	 * @return
	 */
	@PostMapping("remove")
	@RequiresPermissions("system:permission:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b= sysPermissionService.deleteByPrimaryKey(ids);
		if(b==1){
			return success();
		}else if(b==-1){
			return error("该权限有子权限，请先删除子权限");
		}else if(b==-2){
			return error("该权限绑定了角色，请解除角色绑定");
		}else {
			return error();
		}
	}
	
	/**
	 * 检查权限
	 * @param TsysPermission
	 * @return
	 */
	@PostMapping("checkNameUnique")
	@ResponseBody
	public int checkNameUnique(TsysPermission TsysPermission){
		int b= sysPermissionService.checkNameUnique(TsysPermission);
		if(b>0){
			return 1;
		}else{
			return 0;
		}
	}
	
	/**
	 * 检查权限URL
	 * @param tsysUser
	 * @return
	 */
	@PostMapping("checkURLUnique")
	@ResponseBody
	public int checkURLUnique(TsysPermission tsysPermission){
		int b= sysPermissionService.checkURLUnique(tsysPermission);
		if(b>0){
			return 1;
		}else{
			return 0;
		}
	}
	
	/**
	 * 检查权限perms字段
	 * @param tsysUser
	 * @return
	 */
	@PostMapping("checkPermsUnique")
	@ResponseBody
	public int checkPermsUnique(TsysPermission tsysPermission){
		int b= sysPermissionService.checkPermsUnique(tsysPermission);
		if(b>0){
			return 1;
		}else{
			return 0;
		}
	}
	
	/**
	 * 修改权限
	 * @param id
	 * @param mmap
	 * @return
	 */
	@GetMapping("/edit/{roleId}")
    public String edit(@PathVariable("roleId") String id, ModelMap mmap)
    {	
		//获取自己的权限信息
		TsysPermission mytsysPermission = sysPermissionService.selectByPrimaryKey(id);
		//获取父权限信息
		TsysPermission pattsysPermission = sysPermissionService.selectByPrimaryKey(mytsysPermission.getPid());
        mmap.put("TsysPermission", mytsysPermission);
        mmap.put("pattsysPermission", pattsysPermission);
        return prefix + "/edit";
    }
	
	/**
     * 修改保存权限
     */
    @RequiresPermissions("system:permission:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TsysPermission TsysPermission)
    {
        return toAjax(sysPermissionService.updateByPrimaryKey(TsysPermission));
    }
    
    /**
     * 获取所有的转换成bootstarp的权限数据
     * @return
     */
    @GetMapping("/getTreePerm")
    @ResponseBody
    public AjaxResult getbooBootstrapTreePerm(){
    	
    	return retobject(200, sysPermissionService.getbooBootstrapTreePerm(null));
    }
    
    
    /**
     * 根据角色id获取bootstarp 所有打勾权限
     * @param roleId 角色id集合
     * @return
     */
    @PostMapping("/getCheckPrem")
    @ResponseBody
    public AjaxResult getCheckPrem(String roleId){
    	
    	return retobject(200, sysPermissionService.getCheckPrem(roleId));
    }
    
    
    /**
     * 跳转到菜单树页面
     * @return
     */
    @GetMapping("tree")
    public String Tree(){
    	 return prefix + "/tree";
    }
    
    /**
     * 获取菜单树
     * @param pid 父id【没用到】
     * @return
     */
    @PostMapping("tree/{pid}")
    @ResponseBody
    public AjaxResult Tree(@PathVariable("pid") String pid){
    	return retobject(200, sysPermissionService.getbooBootstrapTreePerm(null));
    }
    
    
}
