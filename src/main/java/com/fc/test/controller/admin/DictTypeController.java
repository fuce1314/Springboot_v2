package com.fc.test.controller.admin;

import com.fc.test.model.auto.TSysDictDataExample;
import com.fc.test.service.SysDictDataService;
import com.sun.corba.se.impl.oa.toa.TOA;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.github.pagehelper.PageInfo;
import com.fc.test.common.base.BaseController;
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.model.auto.TSysDictType;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.SysDictTypeService;
import io.swagger.annotations.Api;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("DictTypeController")
@Api(value = "字典类型表")
public class DictTypeController extends BaseController{
	
	private String prefix = "admin/dict_type";
	@Autowired
	private SysDictTypeService tSysDictTypeService;
	@Autowired
	private SysDictDataService sysDictDataService;
	
	@GetMapping("view")
	@RequiresPermissions("system:dictType:view")
    public String view(ModelMap model)
    {	
		String str="字典类型表";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	
	//@Log(title = "字典类型表集合查询", action = "111")
	@PostMapping("list")
	@RequiresPermissions("system:dictType:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchTxt){
		PageInfo<TSysDictType> page=tSysDictTypeService.list(tablepar,searchTxt) ; 
		TableSplitResult<TSysDictType> result=new TableSplitResult<TSysDictType>(page.getPageNum(), page.getTotal(), page.getList()); 
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
	
	//@Log(title = "字典类型表新增", action = "111")
	@PostMapping("add")
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
	 * 删除用户
	 * @param ids
	 * @return
	 */
	//@Log(title = "字典类型表删除", action = "111")
	@PostMapping("remove")
	@RequiresPermissions("system:dictType:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		List<String> idsList = Arrays.asList(ids.split(","));
		List<String> dictIds = tSysDictTypeService.selectByIds(idsList);
		if (dictIds != null && dictIds.size() >0){
			sysDictDataService.deleteByPrimaryDictIds(dictIds);
		}
		int b=tSysDictTypeService.deleteByPrimaryKey(ids);
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
    @RequiresPermissions("system:dictType:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TSysDictType record)
    {
        return toAjax(tSysDictTypeService.updateByPrimaryKeySelective(record));
    }

    
    

	
}
