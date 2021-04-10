package com.fc.v2.model.auto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fc.v2.util.DateUtils;

import java.io.Serializable;
import java.util.Date;

/**
 * 定时任务调度日志表 SysQuartzJobLog 
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2019-09-13 00:03:42
 */
public class SysQuartzJobLog implements Serializable {

	private static final long serialVersionUID = 1L;
	
		
	/** 主键 **/
	private String id;
		
	/** 任务名称 **/
	private String jobName;
		
	/** 任务组名 **/
	private String jobGroup;
		
	/** 调用目标字符串 **/
	private String invokeTarget;
		
	/** 日志信息 **/
	private String jobMessage;
		
	/** 执行状态（0正常 1失败） **/
	private Integer status;
		
	/** 异常信息 **/
	private String exceptionInfo;
		
	/** 开始时间 **/
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date startTime;
		
	/** 结束时间 **/
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date endTime;
		
		
	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
	 
			
	public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }
	 
			
	public String getJobGroup() {
        return jobGroup;
    }

    public void setJobGroup(String jobGroup) {
        this.jobGroup = jobGroup;
    }
	 
			
	public String getInvokeTarget() {
        return invokeTarget;
    }

    public void setInvokeTarget(String invokeTarget) {
        this.invokeTarget = invokeTarget;
    }
	 
			
	public String getJobMessage() {
        return jobMessage;
    }

    public void setJobMessage(String jobMessage) {
        this.jobMessage = jobMessage;
    }
	 
			
	public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
	 
			
	public String getExceptionInfo() {
        return exceptionInfo;
    }

    public void setExceptionInfo(String exceptionInfo) {
        this.exceptionInfo = exceptionInfo;
    }
	 
			
	public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }
	 
			
	public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
	 
			
	public SysQuartzJobLog() {
        super();
    }
    
																																															
	public SysQuartzJobLog(String id,String jobName,String jobGroup,String invokeTarget,String jobMessage,Integer status,String exceptionInfo,Date startTime,Date endTime) {
	
		this.id = id;
		this.jobName = jobName;
		this.jobGroup = jobGroup;
		this.invokeTarget = invokeTarget;
		this.jobMessage = jobMessage;
		this.status = status;
		this.exceptionInfo = exceptionInfo;
		this.startTime = startTime;
		this.endTime = endTime;

	}

	/**
     * 格式化时间
     * @return yyyy-MM-dd HH:mm:ss
     */
	public String getdate(Date date){
        return  DateUtils.parseDateToStr(DateUtils.DATE_TIME_PATTERN,date);
    }

}