package com.fc.test.model.auto;

import java.io.Serializable;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
/**
 * 字典类型表
 * 
 * @author 一休
 * @email 438081243@qq.com
 * @date 2019-09-05 12:34:25
 */
public class TSysDictType implements Serializable {

	private static final long serialVersionUID = 1L;
	
		
	/**
	 * 雪花键
	 */
		private String id;
		
	/**
	 * 字典主键
	 */
		private Long dictId;
		
	/**
	 * 字典名称
	 */
		private String dictName;
		
	/**
	 * 字典类型
	 */
		private String dictType;
		
	/**
	 * 状态（0正常 1停用）
	 */
		private String typeStatus;
		
	/**
	 * 创建者
	 */
		private String createBy;
		
	/**
	 * 创建时间
	 */
		@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
		private Date createTime;
		
	/**
	 * 更新者
	 */
		private String updateBy;
		
	/**
	 * 更新时间
	 */
		@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
		private Date updateTime;
		
	/**
	 * 备注
	 */
		private String remark;
	
			
		public String getId() {
	        return id;
	    }
	
	    public void setId(String id){
	        this.id = id == null ? null : id.trim();
	    }
			
			
		public Long getDictId () {
	        return dictId;
	    }
	
	    public void setDictId (Long dictId) {
	        this.dictId = dictId;
	    }
	 
				
		public String getDictName() {
	        return dictName;
	    }
	
	    public void setDictName(String dictName){
	        this.dictName = dictName == null ? null : dictName.trim();
	    }
			
				
		public String getDictType() {
	        return dictType;
	    }
	
	    public void setDictType(String dictType){
	        this.dictType = dictType == null ? null : dictType.trim();
	    }
			
				
		public String getTypeStatus() {
	        return typeStatus;
	    }
	
	    public void setTypeStatus(String typeStatus){
	        this.typeStatus = typeStatus == null ? null : typeStatus.trim();
	    }

				
		public String getCreateBy() {
	        return createBy;
	    }
	
	    public void setCreateBy(String createBy){
	        this.createBy = createBy == null ? null : createBy.trim();
	    }
			
			
		public Date getCreateTime () {
	        return createTime;
	    }
	
	    public void setCreateTime (Date createTime) {
	        this.createTime = createTime;
	    }
	 
				
		public String getUpdateBy() {
	        return updateBy;
	    }
	
	    public void setUpdateBy(String updateBy){
	        this.updateBy = updateBy == null ? null : updateBy.trim();
	    }
			
			
		public Date getUpdateTime () {
	        return updateTime;
	    }
	
	    public void setUpdateTime (Date updateTime) {
	        this.updateTime = updateTime;
	    }
	 
				
		public String getRemark() {
	        return remark;
	    }
	
	    public void setRemark(String remark){
	        this.remark = remark == null ? null : remark.trim();
	    }

			
}