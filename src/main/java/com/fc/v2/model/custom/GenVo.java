package com.fc.v2.model.custom;

/**
 * 自动生成前端实体类
* @ClassName: GenVo
* @author fuce
* @date 2019-07-11 01:57
*
 */
public class GenVo {
	/** 包名 **/
	private String packageName;
	/** 实体包名 **/
	private String moduleName;
	/** controller权限关键字 **/
	private String controllerPermissionKey;
	/** 模糊查询字段 **/
	private String fuzzyQuery;
	/** 作者 **/
	private String author;
	/** 电子邮件 **/
	private String email;
	/** 表前缀 **/
	private String tablePrefix;
	/** 下载or覆盖 **/
	private String isdown;
	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public String getModuleName() {
		return moduleName;
	}
	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	public String getControllerPermissionKey() {
		return controllerPermissionKey;
	}
	public void setControllerPermissionKey(String controllerPermissionKey) {
		this.controllerPermissionKey = controllerPermissionKey;
	}
	public String getFuzzyQuery() {
		return fuzzyQuery;
	}
	public void setFuzzyQuery(String fuzzyQuery) {
		this.fuzzyQuery = fuzzyQuery;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTablePrefix() {
		return tablePrefix;
	}
	public void setTablePrefix(String tablePrefix) {
		this.tablePrefix = tablePrefix;
	}
	public String getIsdown() {
		return isdown;
	}
	public void setIsdown(String isdown) {
		this.isdown = isdown;
	}
	
	
}
