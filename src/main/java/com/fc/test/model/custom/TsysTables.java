package com.fc.test.model.custom;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class TsysTables implements Serializable{
	private static final long serialVersionUID = 1L;
	private String tableName;
	private String engine;
	private String tableComment;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date createTime;
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getEngine() {
		return engine;
	}
	public void setEngine(String engine) {
		this.engine = engine;
	}
	public String getTableComment() {
		return tableComment;
	}
	public void setTableComment(String tableComment) {
		this.tableComment = tableComment;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public TsysTables(String tableName, String engine, String tableComment, Date createTime) {
		super();
		this.tableName = tableName;
		this.engine = engine;
		this.tableComment = tableComment;
		this.createTime = createTime;
	}
	public TsysTables() {
		super();
	}
	
}
