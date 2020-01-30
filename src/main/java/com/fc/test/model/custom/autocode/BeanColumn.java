package com.fc.test.model.custom.autocode;

import com.fc.test.util.StringUtils;

/**
 * 实体列
 */
public class BeanColumn {
	/** 表\目录 **/
	private String table_catalog;
	/** 是否为null **/
	private String is_nullable;
	/** 表名 **/
	private String table_name;
	/** 数据库  **/
	private String table_schema;
	/** 额外的 EXTRA": "auto_increment  自增id
	 *  **/
	private String extra;
	/** 列名 **/
	private String column_name;
	/**主键 PRI**/
	private String column_key;
	/**数字精度**/
	private String numeric_precision;
	/**权限**/
	private String privileges;
	/**列注释**/
	private String column_comment;
	/**数字刻度**/
	private String numeric_scale;
	/**列/类型**/
	private String column_type;
	/**生成表达式**/
	private String generation_expression;
	/**序数位置**/
	private String ordinal_position;
	/**数据类型**/
	private String data_type;
	/**默认值**/
	private String column_default;
	
	/**字符最大长度**/
	private String  character_maximum_length;
	
	
	/**字符\八位字节\长度**/
	private String character_octet_length;
	
	/**日期时间精度**/
	private String datetime_precision;
	
	
	/**字符集名称**/
	private String character_set_name;
	
	/**排序规则名称**/
	private String collation_name;
	
	
	/**实体 类型**/
	private String beanType=getBeanType();
	
	/**实体bean列名 例如:nameVc **/
	private String beanName=getBeanName();
	
	/**属性类型  例:String**/
    private String attrType=getAttrType();
	
    /**实体bean列名首字母大写  例如:nameVc》NameVc **/
    private String beanName_A=getBeanName_A();
	/**实体mapper需要的数据库类型**/
    private String beanTypeXml=getBeanTypeXml();
    
    /** get set 方法 **/
    private String funName=getFunName();
    
	public BeanColumn() {
		super();
	}
	public String getTable_catalog() {
		return table_catalog;
	}
	public void setTable_catalog(String table_catalog) {
		this.table_catalog = table_catalog;
	}
	public String getIs_nullable() {
		return is_nullable;
	}
	public void setIs_nullable(String is_nullable) {
		this.is_nullable = is_nullable;
	}
	public String getTable_name() {
		return table_name;
	}
	public void setTable_name(String table_name) {
		this.table_name = table_name;
	}
	public String getTable_schema() {
		return table_schema;
	}
	public void setTable_schema(String table_schema) {
		this.table_schema = table_schema;
	}
	public String getExtra() {
		return extra;
	}
	public void setExtra(String extra) {
		this.extra = extra;
	}
	public String getColumn_name() {
		return column_name;
	}
	public void setColumn_name(String column_name) {
		this.column_name = column_name;
	}
	public String getColumn_key() {
		return column_key;
	}
	public void setColumn_key(String column_key) {
		this.column_key = column_key;
	}
	public String getNumeric_precision() {
		return numeric_precision;
	}
	public void setNumeric_precision(String numeric_precision) {
		this.numeric_precision = numeric_precision;
	}
	public String getPrivileges() {
		return privileges;
	}
	public void setPrivileges(String privileges) {
		this.privileges = privileges;
	}
	public String getColumn_comment() {
		return column_comment;
	}
	public void setColumn_comment(String column_comment) {
		this.column_comment = column_comment;
	}
	public String getNumeric_scale() {
		return numeric_scale;
	}
	public void setNumeric_scale(String numeric_scale) {
		this.numeric_scale = numeric_scale;
	}
	public String getColumn_type() {
		return column_type;
	}
	public void setColumn_type(String column_type) {
		this.column_type = column_type;
	}
	public String getGeneration_expression() {
		return generation_expression;
	}
	public void setGeneration_expression(String generation_expression) {
		this.generation_expression = generation_expression;
	}
	public String getOrdinal_position() {
		return ordinal_position;
	}
	public void setOrdinal_position(String ordinal_position) {
		this.ordinal_position = ordinal_position;
	}
	public String getData_type() {
		return data_type;
	}
	public void setData_type(String data_type) {
		this.data_type = data_type;
	}
	public String getColumn_default() {
		return column_default;
	}
	public void setColumn_default(String column_default) {
		this.column_default = column_default;
	}
	public String getCharacter_maximum_length() {
		return character_maximum_length;
	}
	public void setCharacter_maximum_length(String character_maximum_length) {
		this.character_maximum_length = character_maximum_length;
	}
	public String getCharacter_octet_length() {
		return character_octet_length;
	}
	public void setCharacter_octet_length(String character_octet_length) {
		this.character_octet_length = character_octet_length;
	}
	public String getDatetime_precision() {
		return datetime_precision;
	}
	public void setDatetime_precision(String datetime_precision) {
		this.datetime_precision = datetime_precision;
	}
	public String getCharacter_set_name() {
		return character_set_name;
	}
	public void setCharacter_set_name(String character_set_name) {
		this.character_set_name = character_set_name;
	}
	public String getCollation_name() {
		return collation_name;
	}
	public void setCollation_name(String collation_name) {
		this.collation_name = collation_name;
	}
	public String getBeanType() {
		String type=this.getData_type();
		String returnStr="java.lang.String";
		if(type==null) {
			return returnStr;
		}
		switch(type) {
			case "tinyint" :
				returnStr="java.lang.Integer";
				break;
			case "smallint" :
				returnStr="java.lang.Integer";
				break;
			case "int" :
				returnStr="java.lang.Integer";
				break;
			case "bigint" :
				returnStr="java.lang.Long";
				break;
			case "mediumint" :
				returnStr="java.lang.Integer";
				break;
			case "integer" :
				returnStr="java.lang.Integer";
				break;
			case "float" :
				returnStr="java.lang.Float";
				break;
			case "double" :
				returnStr="java.lang.Double";
				break;
			case "decimal" :
				returnStr="java.math.BigDecimal";
				break;
			case "bit" :
				returnStr="java.lang.Byte";
				break;
			case "char" :
				returnStr="java.lang.Character";
				break;
			case "varchar" :
				returnStr="java.lang.String";
				break;
			case "tinytext" :
				returnStr="java.lang.String";
				break;
			case "text" :
				returnStr="java.lang.String";
				break;
			case "mediumtext" :
				returnStr="java.lang.String";
				break;
			case "longtext" :
				returnStr="java.lang.String";
				break;
			case "date" :
				returnStr="java.util.Date";
				break;
			case "datetime" :
				returnStr="java.util.Date";
				break;
			case "timestamp" :
				returnStr="java.util.Date";
				break;
			default:
				break;
		}
		return returnStr;
	}
	public void setBeanType(String beanType) {
		this.beanType = beanType;
	}
	public String getBeanName() {
		if(this.getColumn_name()!=null) {
			return	StringUtils.upperCase_(this.column_name,false);
		}
		return this.getColumn_name();
	}
	public void setBeanName(String beanName) {
		this.beanName = beanName;
	}
	public String getAttrType() {

		String beanType=this.getBeanType();
		String returnStr="String";
		if(beanType==null) {
			return returnStr;
		}else {
			returnStr=beanType.substring(beanType.lastIndexOf(".")+1,beanType.length());
		}
		return returnStr;
	}
	public void setAttrType(String attrType) {
		this.attrType = attrType;
	}
	public String getBeanName_A() {
		if(this.getBeanName()==null) {
			return null;
		}
		return StringUtils.firstUpperCase(this.getBeanName());
	}
	public void setBeanName_A(String beanName_A) {
		this.beanName_A = beanName_A;
	}
	public String getBeanTypeXml() {
		String datetype=this.getData_type();
		String returnStr="VARCHAR";
		if(datetype==null) {
			return returnStr;
		}
		switch(datetype) {
			case "tinyint" :
				returnStr="TINYINT";
				break;
			case "smallint" :
				returnStr="SMALLINT";
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
	public void setBeanTypeXml(String beanTypeXml) {
		this.beanTypeXml = beanTypeXml;
	}
	
	public String getFunName() {
		if(this.getBeanName()==null) {
			return null;
		}
		return StringUtils.toFUNName(this.column_name);
	}
	public void setFunName(String funName) {
		this.funName = funName;
	}
    
	
	
	
	

}
