package com.fc.test.model.custom;

/**
 * 列的属性
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2016年12月20日 上午12:01:45
 */
public class ColumnEntity {
	//列名
    private String columnName;
    //列名类型
    private String dataType;
    //列名备注
    private String comments;
    
    //属性名称(第一个字母大写)，如：user_name => UserName
    private String attrName;
    //属性名称(第一个字母小写)，如：user_name => userName
    private String attrname;
    //属性类型
    private String attrType;
    //auto_increment
    private String extra;
    //mapper映射类型
    @SuppressWarnings("unused")
	private String mappdataType = getMappdataType();
    
    
	public String getColumnName() {
		return columnName;
	}
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	public String getDataType() {
		return dataType;
	}
	public void setDataType(String dataType) {
		this.dataType = dataType;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getAttrname() {
		return attrname;
	}
	public void setAttrname(String attrname) {
		this.attrname = attrname;
	}
	public String getAttrName() {
		return attrName;
	}
	public void setAttrName(String attrName) {
		this.attrName = attrName;
	}
	public String getAttrType() {
		return attrType;
	}
	public void setAttrType(String attrType) {
		this.attrType = attrType;
	}
	public String getExtra() {
		return extra;
	}
	public void setExtra(String extra) {
		this.extra = extra;
	}
	//数据库常用字段映射关系
	public String getMappdataType() {
		String type=this.getDataType();
		String returnStr="VARCHAR";
		if(type==null) {
			return null;
		}
		switch(type) {
			case "tinyint" :
				returnStr="INTEGER";
				break;
			case "smallint" :
				returnStr="INTEGER";
				break;
			case "int" :
				returnStr="INTEGER";
				break;
			case "bigint" :
				returnStr="BIGINT";
				break;
			case "mediumint" :
				returnStr="INTEGER";
				break;
			case "integer" :
				returnStr="INTEGER";
				break;
			case "float" :
				returnStr="REAL";
				break;
			case "double" :
				returnStr="DOUBLE";
				break;
			case "decimal" :
				returnStr="DECIMAL";
				break;
			case "bit" :
				returnStr="OTHER";
				break;
			case "char" :
				returnStr="CHAR";
				break;
			case "varchar" :
				returnStr="VARCHAR";
				break;
			case "tinytext" :
				returnStr="VARCHAR";
				break;
			case "text" :
				returnStr="VARCHAR";
				break;
			case "mediumtext" :
				returnStr="VARCHAR";
				break;
			case "longtext" :
				returnStr="VARCHAR";
				break;
			case "date" :
				returnStr="TIMESTAMP";
				break;
			case "datetime" :
				returnStr="TIMESTAMP";
				break;
			case "timestamp" :
				returnStr="TIMESTAMP";
				break;
			default:
				break;
		}
		return returnStr;
	}
	public void setMappdataType(String mappdataType) {
		this.mappdataType = mappdataType;
	}
	

	
	
	
}
