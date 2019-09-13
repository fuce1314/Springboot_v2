package com.fc.test.controller.admin;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.quartz.SchedulerException;
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
import com.fc.test.model.auto.SysQuartzJob;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.SysQuartzJobService;
import io.swagger.annotations.Api;

@Controller
@RequestMapping("SysQuartzJobController")
@Api(value = "定时任务调度表")
public class QuartzJobController extends BaseController{
	
	private String prefix = "admin/sysQuartzJob";
	@Autowired
	private SysQuartzJobService sysQuartzJobService;
	
	@GetMapping("view")
	@RequiresPermissions("gen:sysQuartzJob:view")
    public String view(ModelMap model)
    {	
		String str="定时任务调度表";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	
	//@Log(title = "定时任务调度表集合查询", action = "111")
	@PostMapping("list")
	@RequiresPermissions("gen:sysQuartzJob:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchTxt){
		PageInfo<SysQuartzJob> page=sysQuartzJobService.list(tablepar,searchTxt) ; 
		TableSplitResult<SysQuartzJob> result=new TableSplitResult<SysQuartzJob>(page.getPageNum(), page.getTotal(), page.getList()); 
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
	
	//@Log(title = "定时任务调度表新增", action = "111")
	@PostMapping("add")
	@RequiresPermissions("gen:sysQuartzJob:add")
	@ResponseBody
	public AjaxResult add(SysQuartzJob sysQuartzJob){
		int b=sysQuartzJobService.insertSelective(sysQuartzJob);
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
	//@Log(title = "定时任务调度表删除", action = "111")
	@PostMapping("remove")
	@RequiresPermissions("gen:sysQuartzJob:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysQuartzJobService.deleteByPrimaryKey(ids);
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
	public int checkNameUnique(SysQuartzJob sysQuartzJob){
		int b=sysQuartzJobService.checkNameUnique(sysQuartzJob);
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
        mmap.put("SysQuartzJob", sysQuartzJobService.selectByPrimaryKey(id));

        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "定时任务调度表修改", action = "111")
    @RequiresPermissions("gen:sysQuartzJob:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysQuartzJob record)
    {
        return toAjax(sysQuartzJobService.updateByPrimaryKeySelective(record));
    }

    /**
     * 任务调度状态修改
     */
    @PostMapping("/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(SysQuartzJob job) throws SchedulerException
    {
    	SysQuartzJob newJob = sysQuartzJobService.selectByPrimaryKey(job.getId());
        newJob.setStatus(job.getStatus());
        return toAjax(sysQuartzJobService.changeStatus(newJob));
    }
    
    /**
     * 任务调度立即执行一次
     */
    @PostMapping("/run")
    @ResponseBody
    public AjaxResult run(SysQuartzJob job) throws SchedulerException
    {
    	SysQuartzJob newJob = sysQuartzJobService.selectByPrimaryKey(job.getId());
    	sysQuartzJobService.run(newJob);
        return success();
    }

	
}
