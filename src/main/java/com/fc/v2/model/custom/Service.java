package com.fc.v2.model.custom;


import com.fc.v2.util.DateUtils;

import cn.hutool.core.io.FileUtil;
import cn.hutool.system.HostInfo;
import cn.hutool.system.JavaInfo;
import cn.hutool.system.JavaRuntimeInfo;
import cn.hutool.system.JavaSpecInfo;
import cn.hutool.system.JvmInfo;
import cn.hutool.system.JvmSpecInfo;
import cn.hutool.system.OsInfo;
import cn.hutool.system.RuntimeInfo;
import cn.hutool.system.SystemUtil;
import cn.hutool.system.UserInfo;

/**
 * 服务器信息类
 * @ClassName: Service
 * @author fuce
 * @date 2019-06-23 01:05
 * @version V1.0
 */
public class Service {
	/**
	 * Java Virtual Machine Specification信息
	 */
	private JvmSpecInfo jvmSpecInfo;
	/**
	 * Java Virtual Machine Implementation信息
	 */
	private JvmInfo jvmInfo;
	/**
	 * Java Specification信息
	 */
	private JavaSpecInfo javaSpecInfo;
	/**
	 * Java Implementation信息
	 */
	private JavaInfo javaInfo;
	/**
	 * Java运行时信息
	 */
	private JavaRuntimeInfo javaRuntimeInfo;
	/**
	 * 系统信息
	 */
	private OsInfo osInfo;
	/**
	 * 用户信息
	 */
	private UserInfo userInfo;
	/**
	 * 运行时信息，包括内存总大小、已用大小、可用大小等
	 */
	private RuntimeInfo runtimeInfo;
	/**
	 * 当前主机网络地址信息
	 */
	private HostInfo hostInfo;
	/**
	 * 启动时间
	 */
	private String startTime;
	/**
	 * 运行时长
	 */
	private String runTime;
	
	private String maxMemory;
	private String totalMemory;
	private String freeMemory;
	private String usableMemory;
	
	
	
	public JvmSpecInfo getJvmSpecInfo() {
		return jvmSpecInfo;
	}
	public void setJvmSpecInfo(JvmSpecInfo jvmSpecInfo) {
		this.jvmSpecInfo = jvmSpecInfo;
	}
	public JvmInfo getJvmInfo() {
		return jvmInfo;
	}
	public void setJvmInfo(JvmInfo jvmInfo) {
		this.jvmInfo = jvmInfo;
	}
	public JavaSpecInfo getJavaSpecInfo() {
		return javaSpecInfo;
	}
	public void setJavaSpecInfo(JavaSpecInfo javaSpecInfo) {
		this.javaSpecInfo = javaSpecInfo;
	}
	public JavaInfo getJavaInfo() {
		return javaInfo;
	}
	public void setJavaInfo(JavaInfo javaInfo) {
		this.javaInfo = javaInfo;
	}
	public JavaRuntimeInfo getJavaRuntimeInfo() {
		return javaRuntimeInfo;
	}
	public void setJavaRuntimeInfo(JavaRuntimeInfo javaRuntimeInfo) {
		this.javaRuntimeInfo = javaRuntimeInfo;
	}
	public OsInfo getOsInfo() {
		return osInfo;
	}
	public void setOsInfo(OsInfo osInfo) {
		this.osInfo = osInfo;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public RuntimeInfo getRuntimeInfo() {
		return runtimeInfo;
	}
	public void setRuntimeInfo(RuntimeInfo runtimeInfo) {
		this.runtimeInfo = runtimeInfo;
	}
	public HostInfo getHostInfo() {
		return hostInfo;
	}
	public void setHostInfo(HostInfo hostInfo) {
		this.hostInfo = hostInfo;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	
	public void setRunTime(String runTime) {
		this.runTime = runTime;
	}
	
	 /**
     * JDK启动时间
     */
    public String getStartTime()
    {
    	startTime= DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD_HH_MM_SS, DateUtils.getServerStartDate());
        return startTime;
    }

    /**
     * JDK运行时间
     */
    public String getRunTime()
    {
    	runTime= DateUtils.getDatePoor(DateUtils.getNowDate(), DateUtils.getServerStartDate());
        return runTime;
    }
    
    
    
    
    
	public String getMaxMemory() {
		return maxMemory;
	}
	public void setMaxMemory(String maxMemory) {
		this.maxMemory = maxMemory;
	}
	public String getTotalMemory() {
		return totalMemory;
	}
	public void setTotalMemory(String totalMemory) {
		this.totalMemory = totalMemory;
	}
	public String getFreeMemory() {
		return freeMemory;
	}
	public void setFreeMemory(String freeMemory) {
		this.freeMemory = freeMemory;
	}
	public String getUsableMemory() {
		return usableMemory;
	}
	public void setUsableMemory(String usableMemory) {
		this.usableMemory = usableMemory;
	}
	public Service() {
		super();
		//取得Java Virtual Machine Specification的信息
		this.jvmSpecInfo=SystemUtil.getJvmSpecInfo();
		//取得Java Virtual Machine Implementation的信息
		this.jvmInfo=SystemUtil.getJvmInfo();
		//取得Java Specification的信息
		this.javaSpecInfo=SystemUtil.getJavaSpecInfo();
		//取得Java Implementation的信息
		this.javaInfo=SystemUtil.getJavaInfo();
		//取得当前运行的JRE的信息
		this.javaRuntimeInfo=SystemUtil.getJavaRuntimeInfo();
		//取得OS的信息
		this.osInfo=SystemUtil.getOsInfo();
		//取得User的信息
		this.userInfo=SystemUtil.getUserInfo();
		//取得Runtime的信息
		this.runtimeInfo=SystemUtil.getRuntimeInfo();
		//取得Host的信息
		this.hostInfo=SystemUtil.getHostInfo();
		//JDK启动时间
		this.startTime=getStartTime();
		//JDK运行时间
		this.runTime=getRunTime();
		//获得JVM最大内存
		this.maxMemory = FileUtil.readableFileSize(SystemUtil.getRuntimeInfo().getMaxMemory());
		//获得JVM已分配内存
		this.totalMemory = FileUtil.readableFileSize(SystemUtil.getRuntimeInfo().getTotalMemory());
		//获得JVM已分配内存中的剩余空间
		this.freeMemory = FileUtil.readableFileSize(SystemUtil.getRuntimeInfo().getFreeMemory());
		//JVM最大可用内存
		this.usableMemory = FileUtil.readableFileSize(SystemUtil.getRuntimeInfo().getUsableMemory());
	}

	
	
}
