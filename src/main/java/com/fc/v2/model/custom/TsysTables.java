package com.fc.v2.model.custom;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;

public class TsysTables implements Serializable{
	private static final long serialVersionUID = 1L;
	private String tableName;//表名
	private String engine;//表引擎
	private String tableComment;//表注释
	private String tableModel;//表实体名字
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
	public String getTableModel() {
		return tableModel;
	}
	public void setTableModel(String tableModel) {
		this.tableModel = tableModel;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public TsysTables(String tableName, String engine, String tableComment, String tableModel, Date createTime) {
		super();
		this.tableName = tableName;
		this.engine = engine;
		this.tableComment = tableComment;
		this.tableModel = tableModel;
		this.createTime = createTime;
	}
	public TsysTables() {
		super();
	}
	
}
