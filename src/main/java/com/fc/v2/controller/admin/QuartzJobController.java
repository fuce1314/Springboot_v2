package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.auto.SysQuartzJob;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.service.SysQuartzJobService;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.quartz.SchedulerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 
* @ClassName: QuartzJobController
* @author Jan 橙寂
* @date 2019-11-20 22:49
 */
@Api(value = "定时任务调度表")
@Controller
@RequestMapping("/SysQuartzJobController")
public class QuartzJobController extends BaseController{
	
	private final String prefix = "admin/sysQuartzJob";
	@Autowired
	private SysQuartzJobService sysQuartzJobService;
	
	/**
	 * 展示页面
	 * @param model
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午3:55:01
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@RequiresPermissions("gen:sysQuartzJob:view")
    public String view(ModelMap model)
    {
        return prefix + "/list";
    }
	/**
	 * 定时任务调度list
	 * @param tablepar
	 * @param searchText
	 * @return
	 */
	//@Log(title = "定时任务调度表集合查询", action = "111")
	@ApiOperation(value = "定时任务调度list", notes = "定时任务调度list")
	@GetMapping("/list")
	@RequiresPermissions("gen:sysQuartzJob:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar, String searchText){
		PageInfo<SysQuartzJob> page=sysQuartzJobService.list(tablepar,searchText) ; 
		return pageTable(page.getList(),page.getTotal());
	}
	
	/**
	 * 新增跳转页面
	 * @param modelMap
	 * @return
	 */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
        return prefix + "/add";
    }
	
    /**
     * 新增保存
     * @param sysQuartzJob
     * @return
     * @author fuce
     * @Date 2019年11月11日 下午4:00:08
     */
	//@Log(title = "定时任务调度表新增", action = "111")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
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
	 * 删除
	 * @param ids
	 * @return
	 */
	//@Log(title = "定时任务调度表删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
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
	 * 检查
	 * @param tsysUser
	 * @return
	 */
	@ApiOperation(value = "检查Name唯一", notes = "检查Name唯一")
	@PostMapping("/checkNameUnique")
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
	@ApiOperation(value = "修改跳转", notes = "修改跳转")
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
	@ApiOperation(value = "修改保存", notes = "修改保存")
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
	//@Log(title = "任务调度状态修改", action = "1")
	@ApiOperation(value = "任务调度状态修改", notes = "任务调度状态修改")
    @PutMapping("/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(@RequestBody SysQuartzJob job) throws SchedulerException
    {
    	SysQuartzJob newJob = sysQuartzJobService.selectByPrimaryKey(job.getId());
        newJob.setStatus(job.getStatus());
        sysQuartzJobService.updateByPrimaryKeySelective(newJob);
        return toAjax(sysQuartzJobService.changeStatus(newJob));
    }
    
    /**
     * 任务调度立即执行一次
     */
	//@Log(title = "任务调度立即执行一次", action = "1")
	@ApiOperation(value = "任务调度立即执行一次", notes = "任务调度立即执行一次")
    @GetMapping("/run/{id}")
    @ResponseBody
    public AjaxResult run(@PathVariable("id") String id) throws SchedulerException
    {
    	SysQuartzJob newJob = sysQuartzJobService.selectByPrimaryKey(id);
    	sysQuartzJobService.run(newJob);
        return success();
    }

	
}
