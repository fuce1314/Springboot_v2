package com.fc.test.controller.admin;

import com.fc.test.common.base.BaseController;
import com.fc.test.common.quartz.QuartzScheduler;
import com.fc.test.common.quartz.entity.SysJob;
import com.fc.test.model.custom.TitleVo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@Api(value = "任务调度类")
@RequestMapping("quartz")
/**
 * @Auther: Jan 橙寂
 * @Date: 2019-7-1 11:06
 * @Description:
 * @Version: 1.0
 */
public class QuartzController extends BaseController{

	private String prefix = "admin/quartz";

	@Autowired
	private QuartzScheduler scheduler;


	@GetMapping("view")
    public String view(ModelMap model)
    {	
		String str="定时器";
		setTitle(model, new TitleVo("表达式生成", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	

	/**
	 * 调用这个方法停止任务调度
	 * @param model
	 * @return
	 */
	@GetMapping("stop")
	@ResponseBody
	public Object stop(Model model, SysJob job)
	{
	return  scheduler.pauseJob(job);

	}


	/**
	 * 调用这个方法继续任务调度
	 * @param model
	 * @return
	 */
	@GetMapping("resume")
	@ResponseBody
	public Object resume(Model model,SysJob job)
	{
	return  scheduler.resumeJob(job);

	}


	/**
	 * 修改定时器
	 * @param model
	 * @return
	 */
	@GetMapping("update")
	@ResponseBody
	public String update(Model model,SysJob job)
	{

		scheduler.modifyJob(job);

		return "success";
	}


	/**
	 * 删除定时器
	 * @param model
	 * @return
	 */
	@GetMapping("delete")
	@ResponseBody
	public String delete(Model model,SysJob job)
	{

		scheduler.deleteJob(job);

		return "success";
	}
}
