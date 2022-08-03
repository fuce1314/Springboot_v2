package com.fc.v2.model.auto;

import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.lang.Integer;

/**
 * 部门表 SysDepartment
 * 
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2020-04-17 13:12:58
 */
@ApiModel(value = "SysDepartment", description = "部门表")
public class SysDepartment implements Serializable {

	private static final long serialVersionUID = 1L;

	/** id **/
	@ApiModelProperty(value = "id")
	private Integer id;

	/** 父id **/
	@ApiModelProperty(value = "父id")
	private String parentId;

	/** 部门名称 **/
	@ApiModelProperty(value = "部门名称")
	private String deptName;

	/** 部门负责人 **/
	@ApiModelProperty(value = "部门负责人")
	private String leader;

	/** 电话 **/
	@ApiModelProperty(value = "电话")
	private String phone;

	/** 邮箱 **/
	@ApiModelProperty(value = "邮箱")
	private String email;

	/** 状态 **/
	@ApiModelProperty(value = "状态")
	private Integer status;

	/** 排序 **/
	@ApiModelProperty(value = "排序")
	private Integer orderNum;

	private Integer childCount;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getLeader() {
		return leader;
	}

	public void setLeader(String leader) {
		this.leader = leader;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(Integer orderNum) {
		this.orderNum = orderNum;
	}

	public Integer getChildCount() {
		return childCount;
	}

	public void setChildCount(Integer childCount) {
		this.childCount = childCount;
	}

	public SysDepartment() {
		super();
	}

	public SysDepartment(Integer id, String parentId, String deptName, String leader, String phone, String email,
			Integer status, Integer orderNum, Integer childCount) {
		this.id = id;
		this.parentId = parentId;
		this.deptName = deptName;
		this.leader = leader;
		this.phone = phone;
		this.email = email;
		this.status = status;
		this.orderNum = orderNum;
		this.childCount = childCount;

	}

}