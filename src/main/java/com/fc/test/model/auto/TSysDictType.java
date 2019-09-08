
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
	
	/** 主键 **/
	private String id;
		
	/** 字典名称 **/
	private String dictName;
		
	/** 字典类型 **/
	private String dictType;
		
	/** 状态（0正常 1停用） **/
	private Character status;
		
	/** 创建者 **/
	private String createBy;
		
	/** 创建时间 **/
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date createTime;
		
	/** 更新者 **/
	private String updateBy;
		
	/** 更新时间 **/
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date updateTime;
		
	/** 备注 **/
	private String remark;
		
		
	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
	 
			
	public String getDictName() {
        return dictName;
    }

    public void setDictName(String dictName) {
        this.dictName = dictName;
    }
	 
			
	public String getDictType() {
        return dictType;
    }

    public void setDictType(String dictType) {
        this.dictType = dictType;
    }
	 
			
	public Character getStatus() {
        return status;
    }

    public void setStatus(Character status) {
        this.status = status;
    }
	 
			
	public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }
	 
			
	public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
	 
			
	public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }
	 
			
	public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
	 
			
	public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
	 
			
	public TSysDictType() {
        super();
    }
    
																																															
	public TSysDictType(String id,String dictName,String dictType,Character status,String createBy,Date createTime,String updateBy,Date updateTime,String remark) {
	
		this.id = id;
		this.dictName = dictName;
		this.dictType = dictType;
		this.status = status;
		this.createBy = createBy;
		this.createTime = createTime;
		this.updateBy = updateBy;
		this.updateTime = updateTime;
		this.remark = remark;
		
	}
			
}