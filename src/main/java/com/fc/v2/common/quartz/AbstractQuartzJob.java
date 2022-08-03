package com.fc.v2.common.quartz;

import cn.hutool.core.exceptions.ExceptionUtil;

import com.fc.v2.common.spring.SpringUtils;
import com.fc.v2.model.auto.SysQuartzJob;
import com.fc.v2.model.auto.SysQuartzJobLog;
import com.fc.v2.service.SysQuartzJobLogService;
import com.fc.v2.util.StringUtils;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import java.util.Date;

/**
 * @CLASSNAME AbstractQuartzJob
 * @Description
 * @Auther Jan  橙寂
 * @DATE 2019/9/5 0005 15:05
 */

public abstract class AbstractQuartzJob implements Job {

    private static final Logger log = LoggerFactory.getLogger(AbstractQuartzJob.class);

    /**
     * 线程本地变量
     */
    private static ThreadLocal<Date> threadLocal = new ThreadLocal<>();

    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException
    {
    	SysQuartzJob sysJob = new SysQuartzJob();
        BeanUtils.copyProperties(context.getMergedJobDataMap().get(ScheduleConstants.TASK_PROPERTIES),sysJob);
        try
        {
            before(context, sysJob);
            if (sysJob != null)
            {
                doExecute(context, sysJob);
            }
            after(context, sysJob, null);
        }
        catch (Exception e)
        {
            log.error("任务执行异常  - ：", e);
            after(context, sysJob, e);
        }
    }

    /**
     * 执行前
     *
     * @param context 工作执行上下文对象
     * @param sysJob 系统计划任务
     */
    protected void before(JobExecutionContext context, SysQuartzJob sysJob)
    {
        threadLocal.set(new Date());
    }

    /**
     * 执行后
     *
     * @param context 工作执行上下文对象
     * @param sysJob 系统计划任务
     */
    protected void after(JobExecutionContext context, SysQuartzJob sysJob, Exception e)
    {
        Date startTime = threadLocal.get();
        threadLocal.remove();

        final SysQuartzJobLog sysJobLog = new SysQuartzJobLog();
        sysJobLog.setJobName(sysJob.getJobName());
        sysJobLog.setJobGroup(sysJob.getJobGroup());
        sysJobLog.setInvokeTarget(sysJob.getInvokeTarget());
        sysJobLog.setStartTime(startTime);
        sysJobLog.setEndTime(new Date());
        long runMs = sysJobLog.getEndTime().getTime() - sysJobLog.getStartTime().getTime();
        sysJobLog.setJobMessage(sysJobLog.getJobName() + " 总共耗时：" + runMs + "毫秒");
        if (e != null)
        {
            sysJobLog.setStatus(ScheduleConstants.FAIL_STATUS);
            String errorMsg = StringUtils.substring(ExceptionUtil.getMessage(e), 0, 2000);
            sysJobLog.setExceptionInfo(errorMsg);
        }
        else
        {
            sysJobLog.setStatus(ScheduleConstants.SUCCESS_STATUS);
        }
        //  这里获取service然后插入库中
        SpringUtils.getBean(SysQuartzJobLogService.class).insertSelective(sysJobLog);
    }

    /**
     * 子类去实现
     * @param jobExecutionContext
     * @param sysJob
     */
    protected abstract void doExecute(JobExecutionContext jobExecutionContext, SysQuartzJob sysJob) throws Exception;
}
