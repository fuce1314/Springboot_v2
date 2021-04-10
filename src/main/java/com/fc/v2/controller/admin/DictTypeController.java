package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.auto.TSysDictType;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.service.SysDictTypeService;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 字典类型Controller
 * @ClassName: DictTypeController
 * @author fuce
 * @date 2019-11-20 22:45
 */
@Api(value = "字典类型表")
@Controller
@RequestMapping("/DictTypeController")
public class DictTypeController extends BaseController{
	
	private final String prefix = "admin/dict_type";

	@Autowired
	private SysDictTypeService tSysDictTypeService;
	
	/**
	 * 分页list页面
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@RequiresPermissions("system:dictType:view")
    public String view(ModelMap model)
    {
        return prefix + "/list";
    }
	
	/**
	 * 字典类型表集合查询
	 * @param tablepar post参数
	 * @param searchText 查询字段
	 * @return ResultTable 集合
	 */
	//@Log(title = "字典类型表集合查询", action = "111")
	@ApiOperation(value = "分页查询", notes = "分页查询")
	@GetMapping("/list")
	@RequiresPermissions("system:dictType:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar, String searchText){
		PageInfo<TSysDictType> page=tSysDictTypeService.list(tablepar,searchText) ; 
		return pageTable(page.getList(),page.getTotal());
	}
	
	/**
	 * 新增跳转
	 * @param modelMap 试图
	 * @return String 跳转连接
	 */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
        return prefix + "/add";
    }
	
    /**
     * 新增保存
     * @param tSysDictType 字段类型
     * @param model  model
     * @return AjaxResult 对象
     */
	//@Log(title = "字典类型表新增", action = "111")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@RequiresPermissions("system:dictType:add")
	@ResponseBody
	public AjaxResult add(TSysDictType tSysDictType,Model model){
		int b=tSysDictTypeService.insertSelective(tSysDictType);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 删除字典类型
	 * @param ids
	 * @return
	 */
	//@Log(title = "字典类型表删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@RequiresPermissions("system:dictType:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=tSysDictTypeService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 检查字典类型名字相同
	 * @param tSysDictType
	 * @return
	 */
	@ApiOperation(value = "检查Name唯一", notes = "检查Name唯一")
	@PostMapping("/checkNameUnique")
	@ResponseBody
	public int checkNameUnique(TSysDictType tSysDictType){
		int b=tSysDictTypeService.checkNameUnique(tSysDictType);
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
        mmap.put("TSysDictType", tSysDictTypeService.selectByPrimaryKey(id));
        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "字典类型表修改", action = "111")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("system:dictType:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TSysDictType record)
    {
        return toAjax(tSysDictTypeService.updateByPrimaryKeySelective(record));
    }

    /**
	 * 修改是否启用
	 * @param record
	 * @return
	 */
    @PutMapping("/updateEnable")
	@ResponseBody
    public AjaxResult updateEnable(@RequestBody TSysDictType record){
		int i=tSysDictTypeService.updateByPrimaryKeySelective(record);
		return toAjax(i);
	}

	
}
