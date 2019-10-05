package com.fc.test.controller.admin;

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
import com.fc.test.model.auto.SysStreet;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.SysStreetService;
import io.swagger.annotations.Api;

@Controller
@RequestMapping("SysStreetController")
@Api(value = "街道设置")
public class SysStreetController extends BaseController{
	
	private String prefix = "admin/province/sysStreet";
	@Autowired
	private SysStreetService sysStreetService;
	
	@GetMapping("view")
	@RequiresPermissions("gen:sysStreet:view")
    public String view(ModelMap model)
    {	
		String str="街道设置";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	
	//@Log(title = "街道设置集合查询", action = "111")
	@PostMapping("list")
	@RequiresPermissions("gen:sysStreet:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchTxt){
		PageInfo<SysStreet> page=sysStreetService.list(tablepar,searchTxt) ; 
		TableSplitResult<SysStreet> result=new TableSplitResult<SysStreet>(page.getPageNum(), page.getTotal(), page.getList()); 
		return  result;
	}
	
	/**
     * 新增
     */

    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
        return prefix + "/add";
    }
	
	//@Log(title = "街道设置新增", action = "111")
	@PostMapping("add")
	@RequiresPermissions("gen:sysStreet:add")
	@ResponseBody
	public AjaxResult add(SysStreet sysStreet){
		int b=sysStreetService.insertSelective(sysStreet);
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
	//@Log(title = "街道设置删除", action = "111")
	@PostMapping("remove")
	@RequiresPermissions("gen:sysStreet:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysStreetService.deleteByPrimaryKey(ids);
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
	@PostMapping("checkNameUnique")
	@ResponseBody
	public int checkNameUnique(SysStreet sysStreet){
		int b=sysStreetService.checkNameUnique(sysStreet);
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
        mmap.put("SysStreet", sysStreetService.selectByPrimaryKey(id));

        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "街道设置修改", action = "111")
    @RequiresPermissions("gen:sysStreet:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysStreet record)
    {
        return toAjax(sysStreetService.updateByPrimaryKeySelective(record));
    }

    
    

	
}
