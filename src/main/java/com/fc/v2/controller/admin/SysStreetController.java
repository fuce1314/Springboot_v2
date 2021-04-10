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
import com.fc.v2.model.auto.SysArea;
import com.fc.v2.model.auto.SysStreet;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.service.SysAreaService;
import com.fc.v2.service.SysStreetService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * 街道Controller
 * @ClassName: SysStreetController
 * @author fuce
 * @date 2019-11-20 22:32
 */
@Api(value = "街道设置")
@Controller
@RequestMapping("/SysStreetController")
public class SysStreetController extends BaseController{
	
	private String prefix = "admin/province/sysStreet";
	@Autowired
	private SysStreetService sysStreetService;
	@Autowired
	private SysAreaService sysAreaService;
	
	/**
	 * 展示跳转
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@RequiresPermissions("gen:sysStreet:view")
    public String view(ModelMap model)
    {
        return prefix + "/list";
    }
	
	/**
	 * list查询
	 * @param tablepar
	 * @param searchText
	 * @return
	 */
	//@Log(title = "街道设置集合查询", action = "111")
	@ApiOperation(value = "分页查询", notes = "分页查询")
	@GetMapping("/list")
	@RequiresPermissions("gen:sysStreet:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchText){
		PageInfo<SysStreet> page=sysStreetService.list(tablepar,searchText);
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
		List<SysArea> sysAreas=sysAreaService.selectByExample(null);
		modelMap.put("sysAreas",sysAreas);
        return prefix + "/add";
    }
	
    /**
     * 新增保存
     * @param sysStreet
     * @return
     * @author fuce
     * @Date 2019年11月11日 下午4:13:37
     */
	//@Log(title = "街道设置新增", action = "111")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
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
	 * 删除
	 * @param ids
	 * @return
	 */
	//@Log(title = "街道设置删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
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
	 * 检查
	 * @param tsysUser
	 * @return
	 */
	@ApiOperation(value = "检查Name唯一", notes = "检查Name唯一")
	@PostMapping("/checkNameUnique")
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
	@ApiOperation(value = "修改跳转", notes = "修改跳转")
	@GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap)
    {
		List<SysArea> sysAreas=sysAreaService.selectByExample(null);
        mmap.put("SysStreet", sysStreetService.selectByPrimaryKey(id));
        mmap.put("sysAreas",sysAreas);
        return prefix + "/edit";
    }
	/**
	 * 修改保存
	 * @param record
	 * @return
	 */
    //@Log(title = "街道设置修改", action = "111")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("gen:sysStreet:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysStreet record)
    {
        return toAjax(sysStreetService.updateByPrimaryKeySelective(record));
    }

    
    

	
}
