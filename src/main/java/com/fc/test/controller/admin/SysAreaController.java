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
import com.fc.test.model.auto.SysArea;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.SysAreaService;
import io.swagger.annotations.Api;

/**
 * 地区Controller
 * @ClassName: SysAreaController
 * @author fuce
 * @date 2019-11-20 22:34
 */
@Api(value = "地区设置")
@Controller
@RequestMapping("/SysAreaController")
public class SysAreaController extends BaseController{
	
	private String prefix = "admin/province/sysArea";
	@Autowired
	private SysAreaService sysAreaService;
	
	/**
	 * 地区页面展示
	 * @param model
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:05:04
	 */
	@GetMapping("/view")
	@RequiresPermissions("gen:sysArea:view")
    public String view(ModelMap model)
    {	
		String str="地区设置";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	
	/**
	 * list集合
	 * @param tablepar
	 * @param searchTxt
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:04:53
	 */
	//@Log(title = "地区设置集合查询", action = "111")
	@PostMapping("/list")
	@RequiresPermissions("gen:sysArea:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchTxt){
		PageInfo<SysArea> page=sysAreaService.list(tablepar,searchTxt) ; 
		TableSplitResult<SysArea> result=new TableSplitResult<SysArea>(page.getPageNum(), page.getTotal(), page.getList()); 
		return  result;
	}
	
	/**
     * 新增跳转
     */
    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
        return prefix + "/add";
    }
	
    /**
     * 新增保存
     * @param sysArea
     * @return
     * @author fuce
     * @Date 2019年11月11日 下午4:04:41
     */
	//@Log(title = "地区设置新增", action = "111")
	@PostMapping("/add")
	@RequiresPermissions("gen:sysArea:add")
	@ResponseBody
	public AjaxResult add(SysArea sysArea){
		int b=sysAreaService.insertSelective(sysArea);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 地区设置删除
	 * @param ids
	 * @return
	 */
	//@Log(title = "地区设置删除", action = "111")
	@PostMapping("/remove")
	@RequiresPermissions("gen:sysArea:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysAreaService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 检查
	 * @param SysArea
	 * @return
	 */
	@PostMapping("/checkNameUnique")
	@ResponseBody
	public int checkNameUnique(SysArea sysArea){
		int b=sysAreaService.checkNameUnique(sysArea);
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
    public String edit(@PathVariable("id") Integer id, ModelMap mmap)
    {
        mmap.put("SysArea", sysAreaService.selectByPrimaryKey(id));

        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "地区设置修改", action = "111")
    @RequiresPermissions("gen:sysArea:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysArea record)
    {
        return toAjax(sysAreaService.updateByPrimaryKeySelective(record));
    }

    
    

	
}
