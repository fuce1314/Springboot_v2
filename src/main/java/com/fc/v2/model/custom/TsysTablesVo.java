package com.fc.v2.model.custom;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;

public class TsysTablesVo implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer parentId;//父id
	private String tableName;//表名
	private String engine;//表引擎
	private String tableComment;//表注释
	private String tableModel;//表实体名字
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date createTime;
	private String tableAndName;//表+名字
	
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
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	
	public TsysTablesVo(Integer id, Integer parentId, String tableName, String engine, String tableComment,
			String tableModel, Date createTime, String tableAndName) {
		super();
		this.id = id;
		this.parentId = parentId;
		this.tableName = tableName;
		this.engine = engine;
		this.tableComment = tableComment;
		this.tableModel = tableModel;
		this.createTime = createTime;
		this.tableAndName = tableAndName;
	}
	public TsysTablesVo() {
		super();
	}
	public String getTableAndName() {
		return tableAndName;
	}
	public void setTableAndName(String tableAndName) {
		this.tableAndName = tableAndName;
	}
	
	
}
