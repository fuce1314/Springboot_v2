package com.fc.v2.controller.admin;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.github.pagehelper.PageInfo;
import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.model.auto.SysCity;
import com.fc.v2.model.auto.SysProvince;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.service.SysCityService;
import com.fc.v2.service.SysProvinceService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * 城市Controller
 * @ClassName: SysCityController
 * @author fuce
 * @date 2019-11-20 22:31
 */
@Api(value = "城市设置")
@Controller
@RequestMapping("/SysCityController")
public class SysCityController extends BaseController{
	
	private String prefix = "admin/province/sysCity";
	@Autowired
	private SysCityService sysCityService;
	
	@Autowired
	private SysProvinceService sysProvinceService;
	
	/**
	 * 城市设置展示跳转
	 * 
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@RequiresPermissions("gen:sysCity:view")
    public String view(ModelMap model)
    {
        return prefix + "/list";
    }
	
	/**
	 * 城市设置list
	 * @param tablepar
	 * @param searchText
	 * @return
	 */
	//@Log(title = "城市设置集合查询", action = "111")
	@ApiOperation(value = "分页查询", notes = "分页查询")
	@GetMapping("/list")
	@RequiresPermissions("gen:sysCity:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchText){
		PageInfo<SysCity> page=sysCityService.list(tablepar,searchText) ; 
		return pageTable(page.getList(),page.getTotal());
	}
	
	/**
	 * 新增跳转
	 * @param modelMap
	 * @return
	 */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
		List<SysProvince> sysProvinces=sysProvinceService.selectByExample(null);
		modelMap.put("sysProvinces", sysProvinces);
        return prefix + "/add";
    }
	/**
	 * 新增保存
	 * @param sysCity
	 * @return
	 */
	//@Log(title = "城市设置新增", action = "111")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@RequiresPermissions("gen:sysCity:add")
	@ResponseBody
	public AjaxResult add(SysCity sysCity){
		int b=sysCityService.insertSelective(sysCity);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 删除
	 * @param ids
	 * @return
	 */
	//@Log(title = "城市设置删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@RequiresPermissions("gen:sysCity:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysCityService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 检查
	 * @param tsysUser
	 * @return
	 */
	@ApiOperation(value = "检查Name唯一", notes = "检查Name唯一")
	@PostMapping("/checkNameUnique")
	@ResponseBody
	public int checkNameUnique(SysCity sysCity){
		int b=sysCityService.checkNameUnique(sysCity);
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
	@ApiOperation(value = "修改跳转", notes = "修改跳转")
	@GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap)
    {
		List<SysProvince> sysProvinces=sysProvinceService.selectByExample(null);
		mmap.put("sysProvinces", sysProvinces);
        mmap.put("SysCity", sysCityService.selectByPrimaryKey(id));
        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "城市设置修改", action = "111")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("gen:sysCity:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysCity record)
    {
        return toAjax(sysCityService.updateByPrimaryKeySelective(record));
    }

    
    

	
}
