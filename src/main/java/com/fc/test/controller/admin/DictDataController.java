package com.fc.test.controller.admin;

import com.fc.test.model.auto.TSysDictData;
import com.fc.test.service.SysDictDataService;
import com.fc.test.service.SysDictTypeService;

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
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import io.swagger.annotations.Api;

@Controller
@RequestMapping("DictDataController")
@Api(value = "字典数据表")
public class DictDataController extends BaseController{
	
	private String prefix = "admin/dict_data";
	@Autowired
	private SysDictDataService tSysDictDataService;
	@Autowired
	private SysDictTypeService sysDictTypeService;
	
	@GetMapping("view")
	@RequiresPermissions("system:dictData:view")
    public String view(ModelMap model,String dictId)
    {
    	model.addAttribute("dictId",dictId);
		String str="字典数据表";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	
	//@Log(title = "字典数据表集合查询", action = "111")
	@PostMapping("list")
	@RequiresPermissions("system:dictData:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchTxt,String dictId){
		PageInfo<TSysDictData> page=tSysDictDataService.list(tablepar,searchTxt,dictId) ;
		TableSplitResult<TSysDictData> result=new TableSplitResult<TSysDictData>(page.getPageNum(), page.getTotal(), page.getList()); 
		return  result;
	}
	
	/**
     * 新增
     */

    @GetMapping("/add")
    public String add(ModelMap modelMap,String dictId)
    {
		modelMap.addAttribute("dictType",sysDictTypeService.selectByPrimaryKey(dictId).getDictType());
        return prefix + "/add";
    }
	
	//@Log(title = "字典数据表新增", action = "111")
	@PostMapping("add")
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
	 * 删除用户
	 * @param ids
	 * @return
	 */
	//@Log(title = "字典数据表删除", action = "111")
	@PostMapping("remove")
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
	 * 检查用户
	 * @param tsysUser
	 * @return
	 */
	@PostMapping("checkNameUnique")
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
    //@Log(title = "字典数据表修改", action = "111")
    @RequiresPermissions("system:dictData:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TSysDictData record)
    {
        return toAjax(tSysDictDataService.updateByPrimaryKeySelective(record));
    }

    
    

	
}
