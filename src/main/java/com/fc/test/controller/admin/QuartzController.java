package com.fc.test.controller.admin;

import com.fc.test.common.base.BaseController;
import com.fc.test.common.quartz.QuartzScheduler;
import com.fc.test.model.custom.TitleVo;

import io.swagger.annotations.Api;
import org.quartz.SchedulerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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


	@Autowired
	private QuartzScheduler scheduler;


	/**
	 * 调用这个方法开启任务调度
	 * @param model
	 * @return
	 */
	@GetMapping("start")
	@ResponseBody
    public String start(Model model)
    {
		scheduler.startJob();
		return "success";
    }


	/**
	 * 调用这个方法停止任务调度
	 * @param model
	 * @return
	 */
	@GetMapping("stop")
	@ResponseBody
	public Object stop(Model model,String taskName,String groupName)
	{
	return  scheduler.pauseJob(taskName,groupName);

	}


	/**
	 * 调用这个方法继续任务调度
	 * @param model
	 * @return
	 */
	@GetMapping("resume")
	@ResponseBody
	public Object resume(Model model,String taskName,String groupName)
	{
	return  scheduler.resumeJob(taskName,groupName);

	}


	/**
	 * 修改定时器
	 * @param model
	 * @return
	 */
	@GetMapping("update")
	@ResponseBody
	public String update(Model model,String taskName,String groupName,String cron)
	{
		try {
			scheduler.modifyJob(taskName,groupName,cron);
		} catch (SchedulerException e) {
			e.printStackTrace();
			return "fail";
		}
		return "success";
	}

}
