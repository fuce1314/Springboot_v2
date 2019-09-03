package com.fc.test.common.quartz;

import org.quartz.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import com.fc.test.common.quartz.job.TestQuartzJob;

import java.util.Date;

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
     * 开始工作
     */
    public void startJob()
    {
        try {
            initTestJob("test","test");
            scheduler.start();

        } catch (SchedulerException e) {
            e.printStackTrace();
            System.out.println("任务掉度开启失败");
        }

    }

    /**
     * 初始化一个任务
     * @param taskName
     * @param groupName
     * @throws SchedulerException
     */
    private void initTestJob(String taskName,String groupName) throws SchedulerException {
        if (!checkJobExists(taskName,groupName)) {
            // 通过JobBuilder构建JobDetail实例，JobDetail规定只能是实现Job接口的实例
            // JobDetail 是具体Job实例
            JobDetail jobDetail = JobBuilder.newJob(TestQuartzJob.class).withIdentity(taskName, groupName).build();
            // 基于表达式构建触发器
            CronScheduleBuilder cronScheduleBuilder = CronScheduleBuilder.cronSchedule(TEST_CRON);
            // CronTrigger表达式触发器 继承于Trigger
            // TriggerBuilder 用于构建触发器实例
            CronTrigger cronTrigger = TriggerBuilder.newTrigger().withIdentity(taskName, groupName)
                    .withSchedule(cronScheduleBuilder.withMisfireHandlingInstructionDoNothing()).build();
            scheduler.scheduleJob(jobDetail, cronTrigger);
        }
    }



    /**
     * 修改某个任务的执行时间
     *
     * @param name
     * @param group
     * @param cron 表达式
     * @return
     * @throws SchedulerException
     */
    public boolean modifyJob(String name, String group, String cron) throws SchedulerException {
        Date date = null;
        TriggerKey triggerKey = new TriggerKey(name, group);
        CronTrigger cronTrigger = (CronTrigger) scheduler.getTrigger(triggerKey);
        if (cronTrigger != null) {
            String oldTime = cronTrigger.getCronExpression();
            if (!oldTime.equalsIgnoreCase(cron)) {
                CronScheduleBuilder cronScheduleBuilder = CronScheduleBuilder.cronSchedule(cron);
                CronTrigger trigger = TriggerBuilder.newTrigger().withIdentity(name, group)
                        .withSchedule(cronScheduleBuilder).build();
                 date = scheduler.rescheduleJob(triggerKey, trigger);
            }
        }
        return date==null?false:true;
    }


    /**
     *  继续执行定时任务
     * @param taskName
     * @param groupName
     * @return
     */
    public boolean resumeJob(String taskName, String groupName) {
        boolean bl = false;
        try {
            //JobKey定义了job的名称和组别
            JobKey jobKey = JobKey.jobKey(taskName, groupName);
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
     * 暂停任务
     * @param taskName
     * @param groupName
     * @return
     */
    public boolean pauseJob(String taskName, String groupName) {
        boolean bl = false;
        try {
            //JobKey定义了job的名称和组别
            JobKey jobKey = JobKey.jobKey(taskName, groupName);
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
     * @param taskName
     * @param groupName
     * @return
     * @throws SchedulerException
     */
    public boolean checkJobExists(String taskName, String groupName) throws SchedulerException {
        TriggerKey triggerKey = TriggerKey.triggerKey(taskName, groupName);
        return scheduler.checkExists(triggerKey);
    }
}
