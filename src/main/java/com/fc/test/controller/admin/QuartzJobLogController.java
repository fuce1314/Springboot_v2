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
import com.fc.test.model.auto.SysQuartzJobLog;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.SysQuartzJobLogService;
import io.swagger.annotations.Api;

@Controller
@RequestMapping("SysQuartzJobLogController")
@Api(value = "定时任务调度日志表")
public class QuartzJobLogController extends BaseController{
	
	private String prefix = "admin/sysQuartzJobLog";
	@Autowired
	private SysQuartzJobLogService sysQuartzJobLogService;
	
	@GetMapping("view")
	@RequiresPermissions("gen:sysQuartzJobLog:view")
    public String view(ModelMap model)
    {	
		String str="定时任务调度日志表";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	
	//@Log(title = "定时任务调度日志表集合查询", action = "111")
	@PostMapping("list")
	@RequiresPermissions("gen:sysQuartzJobLog:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchTxt){
		PageInfo<SysQuartzJobLog> page=sysQuartzJobLogService.list(tablepar,searchTxt) ; 
		TableSplitResult<SysQuartzJobLog> result=new TableSplitResult<SysQuartzJobLog>(page.getPageNum(), page.getTotal(), page.getList()); 
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
	
	//@Log(title = "定时任务调度日志表新增", action = "111")
	@PostMapping("add")
	@RequiresPermissions("gen:sysQuartzJobLog:add")
	@ResponseBody
	public AjaxResult add(SysQuartzJobLog sysQuartzJobLog){
		int b=sysQuartzJobLogService.insertSelective(sysQuartzJobLog);
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
	//@Log(title = "定时任务调度日志表删除", action = "111")
	@PostMapping("remove")
	@RequiresPermissions("gen:sysQuartzJobLog:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysQuartzJobLogService.deleteByPrimaryKey(ids);
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
	public int checkNameUnique(SysQuartzJobLog sysQuartzJobLog){
		int b=sysQuartzJobLogService.checkNameUnique(sysQuartzJobLog);
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
        mmap.put("SysQuartzJobLog", sysQuartzJobLogService.selectByPrimaryKey(id));

        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "定时任务调度日志表修改", action = "111")
    @RequiresPermissions("gen:sysQuartzJobLog:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysQuartzJobLog record)
    {
        return toAjax(sysQuartzJobLogService.updateByPrimaryKeySelective(record));
    }

    
    

	
}
