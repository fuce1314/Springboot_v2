package com.fc.v2.controller.admin;

import com.fc.v2.common.domain.ResultTable;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.github.pagehelper.PageInfo;
import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.model.auto.SysInterUrl;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.service.SysInterUrlService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(value = "拦截url表")
@Controller
@RequestMapping("/SysInterUrlController")
public class SysInterUrlController extends BaseController{
	
	private final String prefix = "admin/sysInterUrl";
	@Autowired
	private SysInterUrlService sysInterUrlService;
	
	/**
	 * 分页跳转
	 * @param model
	 * @return
	 * @author fuce
	 * @Date 2020年4月18日 下午11:43:33
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@RequiresPermissions("gen:sysInterUrl:view")
    public String view(ModelMap model)
    {
		return prefix + "/list";
    }
	
	/**
	 * 分页查询
	 * @param tablepar
	 * @param searchText
	 * @return
	 * @author fuce
	 * @Date 2020年4月18日 下午11:43:42
	 */
	//@Log(title = "拦截url表集合查询", action = "111")
	@ApiOperation(value = "分页查询", notes = "分页查询")
	@GetMapping("/list")
	@RequiresPermissions("gen:sysInterUrl:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar, String searchText){
		PageInfo<SysInterUrl> page=sysInterUrlService.list(tablepar,searchText) ; 
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
	 * 新增
	 * @param sysInterUrl
	 * @return
	 * @author fuce
	 * @Date 2020年4月18日 下午11:44:30
	 */
	//@Log(title = "拦截url表新增", action = "1")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@RequiresPermissions("gen:sysInterUrl:add")
	@ResponseBody
	public AjaxResult add(SysInterUrl sysInterUrl){
		int b=sysInterUrlService.insertSelective(sysInterUrl);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 复制
	 * @param id
	 * @return
	 * @author fuce
	 * @Date 2020年4月18日 下午11:44:42
	 */
	//@Log(title = "复制", action = "1")
	@ApiOperation(value = "复制", notes = "复制")
	@GetMapping("/copy/{id}")
	@RequiresPermissions("gen:sysInterUrl:add")
	@ResponseBody
	public AjaxResult copy(@PathVariable("id") String id){
		SysInterUrl sysInterUrl= sysInterUrlService.selectByPrimaryKey(id);
		sysInterUrl.setInterName(sysInterUrl.getInterName()+"复制");
		int b=sysInterUrlService.insertSelective(sysInterUrl);
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
	//@Log(title = "拦截url表删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@RequiresPermissions("gen:sysInterUrl:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysInterUrlService.deleteByPrimaryKey(ids);
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
	@ApiOperation(value = "检查Name唯一", notes = "检查Name唯一")
	@PostMapping("/checkNameUnique")
	@ResponseBody
	public int checkNameUnique(SysInterUrl sysInterUrl){
		int b=sysInterUrlService.checkNameUnique(sysInterUrl);
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
        mmap.put("SysInterUrl", sysInterUrlService.selectByPrimaryKey(id));

        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "拦截url表修改", action = "1")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("gen:sysInterUrl:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysInterUrl record)
    {
        return toAjax(sysInterUrlService.updateByPrimaryKeySelective(record));
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
   	public SysInterUrl edit(@PathVariable("id") String id) {
   		return sysInterUrlService.selectByPrimaryKey(id);
   	}
    

	
}
