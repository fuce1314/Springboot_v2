package com.fc.v2.controller.gen;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.model.auto.Cpgh;
import com.fc.v2.service.CpghService;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import cn.dev33.satoken.annotation.SaCheckPermission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 磁盘柜号Controller
 * @ClassName: CpghController
 * @author fuce
 * @date 2022-03-06 15:13:41
 */
@Api(value = "磁盘柜号")
@Controller
@RequestMapping("/CpghController")
public class CpghController extends BaseController{
	
	private String prefix = "gen/cpgh";
	
	@Autowired
	private CpghService cpghService;
	
	
	/**
	 * 磁盘柜号页面展示
	 * @param model
	 * @return String
	 * @author fuce
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@SaCheckPermission("gen:cpgh:view")
    public String view(ModelMap model)
    {
        return prefix + "/list";
    }
	
	/**
	 * list集合
	 * @param tablepar
	 * @param searchText
	 * @return
	 */
	//@Log(title = "磁盘柜号", action = "111")
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/list")
	@SaCheckPermission("gen:cpgh:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar,Cpgh cpgh){
		PageInfo<Cpgh> page=cpghService.list(tablepar,cpgh) ; 
		return pageTable(page.getList(),page.getTotal());
	}
	
	/**
     * 新增跳转
     */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
        return prefix + "/add";
    }
	
    /**
     * 新增保存
     * @param 
     * @return
     */
	//@Log(title = "磁盘柜号新增", action = "111")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@SaCheckPermission("gen:cpgh:add")
	@ResponseBody
	public AjaxResult add(Cpgh cpgh){
		int b=cpghService.insertSelective(cpgh);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 磁盘柜号删除
	 * @param ids
	 * @return
	 */
	//@Log(title = "磁盘柜号删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@SaCheckPermission("gen:cpgh:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=cpghService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
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
    public String edit(@PathVariable("id") String id, ModelMap map)
    {
        map.put("Cpgh", cpghService.selectByPrimaryKey(id));

        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "磁盘柜号修改", action = "111")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @SaCheckPermission("gen:cpgh:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Cpgh cpgh)
    {
        return toAjax(cpghService.updateByPrimaryKeySelective(cpgh));
    }
    
    
    /**
	 * 修改状态
	 * @param record
	 * @return
	 */
    @PutMapping("/updateVisible")
	@ResponseBody
    public AjaxResult updateVisible(@RequestBody Cpgh cpgh){
		int i=cpghService.updateVisible(cpgh);
		return toAjax(i);
	}

    
    

	
}
