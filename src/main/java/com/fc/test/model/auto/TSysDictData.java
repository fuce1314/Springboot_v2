package com.fc.test.model.auto;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 字典数据表
 * 
 * @author 一休
 * @email 438081243@qq.com
 * @date 2019-09-08 00:10:43
 */
public class TSysDictData implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 字典数据表id
	 */
	private String id;

	/**
	 * 字典排序
	 */
	private Integer dictSort;

	/**
	 * 字典标签
	 */
	private String dictLabel;

	/**
	 * 字典键值
	 */
	private String dictValue;

	/**
	 * 字典类型
	 */
	private String dictType;

	/**
	 * 样式属性（其他样式扩展）
	 */
	private String cssClass;

	/**
	 * 表格回显样式
	 */
	private String listClass;

	/**
	 * 是否默认（Y是 N否）
	 */
	private String isDefault;

	/**
	 * 状态（0正常 1停用）
	 */
	private String status;

	/**
	 * 创建者
	 */
	private String createBy;

	/**
	 * 创建时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTime;

	/**
	 * 更新者
	 */
	private String updateBy;

	/**
	 * 更新时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date updateTime;

	/**
	 * 备注
	 */
	private String remark;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id == null ? null : id.trim();
	}

	public Integer getDictSort() {
		return dictSort;
	}

	public void setDictSort(Integer dictSort) {
		this.dictSort = dictSort;
	}

	public String getDictLabel() {
		return dictLabel;
	}

	public void setDictLabel(String dictLabel) {
		this.dictLabel = dictLabel == null ? null : dictLabel.trim();
	}

	public String getDictValue() {
		return dictValue;
	}

	public void setDictValue(String dictValue) {
		this.dictValue = dictValue == null ? null : dictValue.trim();
	}

	public String getDictType() {
		return dictType;
	}

	public void setDictType(String dictType) {
		this.dictType = dictType == null ? null : dictType.trim();
	}

	public String getCssClass() {
		return cssClass;
	}

	public void setCssClass(String cssClass) {
		this.cssClass = cssClass == null ? null : cssClass.trim();
	}

	public String getListClass() {
		return listClass;
	}

	public void setListClass(String listClass) {
		this.listClass = listClass == null ? null : listClass.trim();
	}

	public String getIsDefault() {
		return isDefault;
	}

	public void setIsDefault(String isDefault) {
		this.isDefault = isDefault == null ? null : isDefault.trim();
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status == null ? null : status.trim();
	}

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy == null ? null : createBy.trim();
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
		this.updateBy = updateBy == null ? null : updateBy.trim();
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
		this.remark = remark == null ? null : remark.trim();
	}

	public TSysDictData() {
		super();
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE).append("id", getId())
				.append("dictSort", getDictSort()).append("dictLabel", getDictLabel())
				.append("dictValue", getDictValue()).append("dictType", getDictType()).append("cssClass", getCssClass())
				.append("listClass", getListClass()).append("isDefault", getIsDefault()).append("status", getStatus())
				.append("createBy", getCreateBy()).append("createTime", getCreateTime())
				.append("updateBy", getUpdateBy()).append("updateTime", getUpdateTime()).append("remark", getRemark())
				.toString();
	}

}