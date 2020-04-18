package com.fc.test.controller.admin;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.github.pagehelper.PageInfo;
import com.fc.test.common.base.BaseController;
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.model.auto.SysDepartment;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.SysDepartmentService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Controller
@RequestMapping("/SysDepartmentController")
@Api(value = "部门表")
public class SysDepartmentController extends BaseController{
	
	private String prefix = "admin/sysDepartment";
	@Autowired
	private SysDepartmentService sysDepartmentService;
	
	@GetMapping("/view")
	@RequiresPermissions("gen:sysDepartment:view")
    public String view(ModelMap model)
    {	
		String str="部门表";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	
	//@Log(title = "部门表集合查询", action = "111")
	@PostMapping("/list")
	@RequiresPermissions("gen:sysDepartment:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchText){
		PageInfo<SysDepartment> page=sysDepartmentService.list(tablepar,searchText) ; 
		TableSplitResult<SysDepartment> result=new TableSplitResult<SysDepartment>(page.getPageNum(), page.getTotal(), page.getList()); 
		return  result;
	}
	
	@PostMapping("/list2")
	@ResponseBody
	public Object list2(Tablepar tablepar,String searchText){
		List<SysDepartment> page= sysDepartmentService.list2(searchText) ;
		return  page;
	}
	
	/**
     * 新增
     */

    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
        return prefix + "/add";
    }
	
	//@Log(title = "部门表新增", action = "111")
	@PostMapping("/add")
	@RequiresPermissions("gen:sysDepartment:add")
	@ResponseBody
	public AjaxResult add(SysDepartment sysDepartment){
		int b=sysDepartmentService.insertSelective(sysDepartment);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 删除用户
	 * @param ids
	 * @return
	 */
	//@Log(title = "部门表删除", action = "111")
	@PostMapping("/remove")
	@RequiresPermissions("gen:sysDepartment:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysDepartmentService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 检查用户
	 * @param tsysUser
	 * @return
	 */
	@PostMapping("/checkNameUnique")
	@ResponseBody
	public int checkNameUnique(SysDepartment sysDepartment){
		int b=sysDepartmentService.checkNameUnique(sysDepartment);
		if(b>0){
			return 1;
		}else{
			return 0;
		}
	}
	
	
	/**
	 * 修改跳转
	 * @param id
	 * @param mmap
	 * @return
	 */
	@GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap)
    {
		//获取自己的权限信息
		SysDepartment mytsysPermission = sysDepartmentService.selectByPrimaryKey(id);
		//获取父权限信息
		SysDepartment department = sysDepartmentService.selectByPrimaryKey(mytsysPermission.getParentId());
		if(department==null) {
			department=new SysDepartment(1, "", "顶级菜单", "", "", "", 0, 1, 1);
		}
        mmap.put("SysDepartment", mytsysPermission);
        mmap.put("perSysDepartment", department);
        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "部门表修改", action = "111")
    @RequiresPermissions("gen:sysDepartment:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysDepartment record)
    {
        return toAjax(sysDepartmentService.updateByPrimaryKeySelective(record));
    }

    
    /**
   	 * 根据主键查询
   	 * 
   	 * @param id
   	 * @param mmap
   	 * @return
   	 */
   	@PostMapping("/get/{id}")
   	@ApiOperation(value = "根据id查询唯一", notes = "根据id查询唯一")
   	public SysDepartment edit(@PathVariable("id") String id) {
   		return sysDepartmentService.selectByPrimaryKey(id);
   	}
    
   	
   	/**
     * 跳转到菜单树页面
     * @return
     */
    @GetMapping("/tree")
    public String Tree(){
    	 return prefix + "/tree";
    }
    
    /**
     * 获取菜单树
     * @param pid 父id【没用到】
     * @return
     */
    @PostMapping("/tree/{pid}")
    @ResponseBody
    public AjaxResult Tree(@PathVariable("pid") String pid){
    	return retobject(200, sysDepartmentService.getbooBootstrapTreePerm());
    }

	
}
