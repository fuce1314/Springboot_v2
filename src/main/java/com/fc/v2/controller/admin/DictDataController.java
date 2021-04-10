package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.model.auto.TSysDictData;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.service.SysDictDataService;
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
 * 字典表Controller
 * @ClassName: DictDataController
 * @author fuce
 * @date 2019-11-20 22:46
 */
@Api(value = "字典数据表")
@Controller
@RequestMapping("/DictDataController")
public class DictDataController extends BaseController{
	
	private final String prefix = "admin/dict_data";
	@Autowired
	private SysDictDataService tSysDictDataService;
	@Autowired
	private SysDictTypeService sysDictTypeService;
	
	/**
	 * 分页list页面
	 * @param model
	 * @param dictId
	 * @return
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@RequiresPermissions("system:dictData:view")
    public String view(ModelMap model,String dictId)
    {
    	model.addAttribute("dictId",dictId);
        return prefix + "/list";
    }
	
	/**
	 * 字典数据表集合查询
	 * @param tablepar
	 * @param searchText
	 * @param dictId
	 * @return
	 */
	//@Log(title = "字典数据表集合查询", action = "1")
	@ApiOperation(value = "分页查询", notes = "分页查询")
	@GetMapping("/list")
	@RequiresPermissions("system:dictData:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchText,String dictId){
		PageInfo<TSysDictData> page=tSysDictDataService.list(tablepar,searchText,dictId) ;
		return pageTable(page.getList(),page.getTotal());
	}
	
	/**
	 * 新增跳转
	 * @param modelMap
	 * @param dictId
	 * @return
	 */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap,String dictId)
    {
		modelMap.addAttribute("dictType",sysDictTypeService.selectByPrimaryKey(dictId).getDictType());
        return prefix + "/add";
    }
	
    /**
     * 新增保存
     * @param tSysDictData
     * @param model
     * @return
     */
	//@Log(title = "字典数据表新增", action = "1")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@RequiresPermissions("system:dictData:add")
	@ResponseBody
	public AjaxResult add(TSysDictData tSysDictData, Model model){
		int b=tSysDictDataService.insertSelective(tSysDictData);
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
	//@Log(title = "字典数据表删除", action = "1")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@RequiresPermissions("system:dictData:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=tSysDictDataService.deleteByPrimaryKey(ids);
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
	public int checkNameUnique(TSysDictData tSysDictData){
		int b=tSysDictDataService.checkNameUnique(tSysDictData);
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
		TSysDictData sysDictData= tSysDictDataService.selectByPrimaryKey(id);
        mmap.put("TSysDictData", sysDictData);
        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "字典数据表修改", action = "1")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("system:dictData:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TSysDictData record)
    {
        return toAjax(tSysDictDataService.updateByPrimaryKeySelective(record));
    }


    /**
	 * 修改是否默认
	 * @param record
	 * @return
	 */
    @PutMapping("/updateDefault")
	@ResponseBody
    public AjaxResult updateDefault(@RequestBody TSysDictData record){
		int i=tSysDictDataService.updateByPrimaryKeySelective(record);
		return toAjax(i);
	}
    
 	/**
	 * 修改是否启用
	 * @param record
	 * @return
	 */
    @PutMapping("/updateEnable")
	@ResponseBody
    public AjaxResult updateEnable(@RequestBody TSysDictData record){
		int i=tSysDictDataService.updateByPrimaryKeySelective(record);
		return toAjax(i);
	}
	
}
