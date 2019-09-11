package com.fc.test.common.quartz;

import com.fc.test.common.quartz.entity.SysJob;
import org.quartz.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;

/**
 * @CLASSNAME QuartzConfig
 * @Description  Quartz配置类
 * @Auther Jan  橙寂
 * @DATE 2019/9/2 0002 15:21
 */
@Configuration
public class QuartzScheduler {

    @Autowired
    private  Scheduler scheduler;

    //这个东西可以放在配置文件中
    //cron表达式 一分钟执行一次
    private final  String TEST_CRON="0 0/1 * * * ?";

    /**
     * 容器初始化时执行此方法
     * 也就是类初始化的时候
     */
    @PostConstruct
    public void init() throws SchedulerException {
        //这一块可以从数据库中查
        for (int i=1;i<=1;i++)
        {
            SysJob job=new SysJob();
            job.setJobId(new Long(i));
            job.setJobName("测试工作");
            job.setJobGroup("quartz");
            job.setCronExpression("0 0/1 * * * ?");
            //并发执行
            job.setConcurrent("0");
            //0启用
            job.setStatus("0");
            //执行的job类
            job.setInvokeTarget("ryTask.runTask2(1,2l,'asa',true,2D)");
            try {
                //防止因为数据问题重复创建
                if(checkJobExists(job))
                {
                    deleteJob(job);
                }
            createSchedule(job);
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
        }

        start();

    }

    /**
     * 启动定时器
     */
    public void start()
{
    try {
        scheduler.start();
    } catch (SchedulerException e) {
        e.printStackTrace();
        System.out.println("定时任务执行失败");
    }
}


    /**
     * 创建一个定时任务
     * @param job
     * @throws SchedulerException
     */
    private void createSchedule(SysJob job) throws SchedulerException {
        if (!checkJobExists(job)) {
            //获取指定的job工作类
            Class<? extends Job> jobClass = getQuartzJobClass(job);
            // 通过JobBuilder构建JobDetail实例，JobDetail规定只能是实现Job接口的实例
            // JobDetail 是具体Job实例
            JobDetail jobDetail = JobBuilder.newJob((Class<? extends Job>) jobClass).withIdentity(ScheduleConstants.TASK_PRE+job.getJobId(),job.getJobName()).build();
            // 基于表达式构建触发器
            CronScheduleBuilder cronScheduleBuilder = CronScheduleBuilder.cronSchedule(TEST_CRON);
            // CronTrigger表达式触发器 继承于Trigger
            // TriggerBuilder 用于构建触发器实例
            CronTrigger cronTrigger = TriggerBuilder.newTrigger().withIdentity(ScheduleConstants.TASK_PRE+job.getJobId(),job.getJobName())
                    .withSchedule(cronScheduleBuilder.withMisfireHandlingInstructionDoNothing()).build();

            //放入参数，运行时的方法可以获取
            jobDetail.getJobDataMap().put(ScheduleConstants.TASK_PROPERTIES, job);

            scheduler.scheduleJob(jobDetail, cronTrigger);

            //如果这个工作的状态为1
            if (job.getStatus().equals("1"))
            {
                pauseJob(job);
            }
        }
    }




    /**
     * 修改定时任务
     * @param job
     * @return
     * @throws SchedulerException
     */
    public boolean modifyJob(SysJob job) {

        try {
            //先删除
            if(checkJobExists(job))
            {
                deleteJob(job);
            }
            createSchedule(job);
        } catch (SchedulerException e) {
            e.printStackTrace();
            return  false;
        }
        return  true;
    }


    /**
     *  继续执行定时任务
     * @param job
     * @return
     */
    public boolean resumeJob(SysJob job) {
        boolean bl = false;
        try {
            //JobKey定义了job的名称和组别
            JobKey jobKey = JobKey.jobKey(ScheduleConstants.TASK_PRE+job.getJobId(), job.getJobGroup());
            if (jobKey != null) {
                //继续任务
                scheduler.resumeJob(jobKey);
                bl = true;
            }
        } catch (SchedulerException e) {
            System.out.println("继续调度任务异常:" + e);
        } catch (Exception e) {
            System.out.println("继续调度任务异常:" + e);
        }
        return bl;
    }

    /**
     *  删除定时任务
     * @param job
     * @return
     */
    public boolean deleteJob(SysJob job) {
        boolean bl = false;
        try {
            //JobKey定义了job的名称和组别
            JobKey jobKey = JobKey.jobKey(ScheduleConstants.TASK_PRE+job.getJobId(), job.getJobGroup());
            if (jobKey != null) {
                //删除定时任务
                scheduler.deleteJob(jobKey);
                bl = true;
            }
        } catch (SchedulerException e) {
            System.out.println("删除调度任务异常:" + e);
        } catch (Exception e) {
            System.out.println("删除调度任务异常:" + e);
        }
        return bl;
    }

    /**
     * 暂停任务
     * @param job
     * @return
     */
    public boolean pauseJob(SysJob job) {
        boolean bl = false;
        try {
            //JobKey定义了job的名称和组别
            JobKey jobKey = JobKey.jobKey(ScheduleConstants.TASK_PRE+job.getJobId(), job.getJobGroup());
            //暂停任务
            if (jobKey != null) {
                scheduler.pauseJob(jobKey);
                bl = true;
            }
        } catch (SchedulerException e) {
            //  getLog().info("暂停调度任务异常:" + e);
        } catch (Exception e) {
            //  getLog().info("暂停调度任务异常:"+ e);
        }
        return bl;
    }

    /**
     * 判断定时任务是否已经存在
     * @param job
     * @return
     * @throws SchedulerException
     */
    public boolean checkJobExists(SysJob job) throws SchedulerException {
        TriggerKey triggerKey = TriggerKey.triggerKey(ScheduleConstants.TASK_PRE+job.getJobId(), job.getJobGroup());
        return scheduler.checkExists(triggerKey);
    }


    /**
     * 获取定时任务的具体执行类
     * @param sysJob
     * @return
     */
    private static Class<? extends Job> getQuartzJobClass(SysJob sysJob)
    {
        boolean isConcurrent = "0".equals(sysJob.getConcurrent());
        return isConcurrent ? QuartzJobExecution.class : QuartzDisallowConcurrentExecution.class;
    }
}
