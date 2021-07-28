package com.fc.v2.model.custom.autocode;

import java.util.List;

/**
 * 配置文件model
 * @ClassName: AutoConfigModel
 * @author fuce
 * @date 2021-01-17 23:29
 */
public class AutoConfigModel {
	/**表名称**/
	private String tableName;
	/**表描述**/
	private String tableComment;
	/**作者**/
	private String author;
	/** 父菜单**/
	private String pid;
	/**自定义路径**/
	private String parentPath;
	
	private List<BeanColumn> beanColumns;
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getTableComment() {
		return tableComment;
	}
	public void setTableComment(String tableComment) {
		this.tableComment = tableComment;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getParentPath() {
		return parentPath;
	}
	public void setParentPath(String parentPath) {
		this.parentPath = parentPath;
	}

	public AutoConfigModel() {
		super();
	}
	public List<BeanColumn> getBeanColumns() {
		return beanColumns;
	}
	public void setBeanColumns(List<BeanColumn> beanColumns) {
		this.beanColumns = beanColumns;
	}
	public AutoConfigModel(String tableName, String tableComment, String author, String pid, String parentPath,
			List<BeanColumn> beanColumns) {
		super();
		this.tableName = tableName;
		this.tableComment = tableComment;
		this.author = author;
		this.pid = pid;
		this.parentPath = parentPath;
		this.beanColumns = beanColumns;
	}
	
	
}
