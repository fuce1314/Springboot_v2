package com.fc.v2.model.auto;

import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.lang.Integer;

/**
 * 岗位表 SysPosition
 * 
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2020-04-16 23:46:24
 */
@ApiModel(value = "SysPosition", description = "岗位表")
public class SysPosition implements Serializable {

	private static final long serialVersionUID = 1L;

	/** 主键 **/
	@ApiModelProperty(value = "主键")
	private String id;

	/** 岗位名称 **/
	@ApiModelProperty(value = "岗位名称")
	private String postName;

	/** 排序 **/
	@ApiModelProperty(value = "排序")
	private Integer orderNum;

	/** 状态 **/
	@ApiModelProperty(value = "状态")
	private Integer status;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPostName() {
		return postName;
	}

	public void setPostName(String postName) {
		this.postName = postName;
	}

	public Integer getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(Integer orderNum) {
		this.orderNum = orderNum;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public SysPosition() {
		super();
	}

	public SysPosition(String id, String postName, Integer orderNum, Integer status) {

		this.id = id;
		this.postName = postName;
		this.orderNum = orderNum;
		this.status = status;

	}

}