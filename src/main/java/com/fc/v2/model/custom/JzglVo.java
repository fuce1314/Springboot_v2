package com.fc.v2.model.custom;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import cn.hutool.core.date.DateUtil;
import java.util.Date;

public class JzglVo implements Serializable {
    private static final long serialVersionUID = 1L;

	
	@ApiModelProperty(value = "主键")
	private String id;
	
	@ApiModelProperty(value = "介质编码")
	private String jzbm;
	
	@ApiModelProperty(value = "介质名称")
	private String jzmc;
	
	
	@ApiModelProperty(value = "型号")
	private String xh;
	
	@ApiModelProperty(value = "批次号")
	private String pch;
	
	
	@ApiModelProperty(value = "介质类型 1、定盘 2、光盘")
	private Integer jzType;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@ApiModelProperty(value = "创建时间")
	private Date createTime;
	
	@ApiModelProperty(value = "创建人id")
	private String createUserId;
	
	@ApiModelProperty(value = "创建人名称")
	private String createUserName;
	
	@ApiModelProperty(value = "所属机柜")
	private String ssjgId;
	
	@ApiModelProperty(value = "定盘状态")
	private Integer dpState;
	
	@ApiModelProperty(value = "磁盘机柜")
	private String cpjgId;
	
	@ApiModelProperty(value = "机柜名字")
	private String jgName;
	
	@ApiModelProperty(value = "磁盘柜号")
	private String cpgh;
	

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}


	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}


	/**
	 * @return the jzbm
	 */
	public String getJzbm() {
		return jzbm;
	}


	/**
	 * @param jzbm the jzbm to set
	 */
	public void setJzbm(String jzbm) {
		this.jzbm = jzbm;
	}


	/**
	 * @return the jzmc
	 */
	public String getJzmc() {
		return jzmc;
	}


	/**
	 * @param jzmc the jzmc to set
	 */
	public void setJzmc(String jzmc) {
		this.jzmc = jzmc;
	}


	/**
	 * @return the xh
	 */
	public String getXh() {
		return xh;
	}


	/**
	 * @param xh the xh to set
	 */
	public void setXh(String xh) {
		this.xh = xh;
	}


	/**
	 * @return the pch
	 */
	public String getPch() {
		return pch;
	}


	/**
	 * @param pch the pch to set
	 */
	public void setPch(String pch) {
		this.pch = pch;
	}


	/**
	 * @return the jzType
	 */
	public Integer getJzType() {
		return jzType;
	}


	/**
	 * @param jzType the jzType to set
	 */
	public void setJzType(Integer jzType) {
		this.jzType = jzType;
	}


	/**
	 * @return the createTime
	 */
	public Date getCreateTime() {
		return createTime;
	}


	/**
	 * @param createTime the createTime to set
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}


	/**
	 * @return the createUserId
	 */
	public String getCreateUserId() {
		return createUserId;
	}


	/**
	 * @param createUserId the createUserId to set
	 */
	public void setCreateUserId(String createUserId) {
		this.createUserId = createUserId;
	}


	/**
	 * @return the createUserName
	 */
	public String getCreateUserName() {
		return createUserName;
	}


	/**
	 * @param createUserName the createUserName to set
	 */
	public void setCreateUserName(String createUserName) {
		this.createUserName = createUserName;
	}


	/**
	 * @return the ssjgId
	 */
	public String getSsjgId() {
		return ssjgId;
	}


	/**
	 * @param ssjgId the ssjgId to set
	 */
	public void setSsjgId(String ssjgId) {
		this.ssjgId = ssjgId;
	}


	/**
	 * @return the dpState
	 */
	public Integer getDpState() {
		return dpState;
	}


	/**
	 * @param dpState the dpState to set
	 */
	public void setDpState(Integer dpState) {
		this.dpState = dpState;
	}


	/**
	 * @return the cpjgId
	 */
	public String getCpjgId() {
		return cpjgId;
	}


	/**
	 * @param cpjgId the cpjgId to set
	 */
	public void setCpjgId(String cpjgId) {
		this.cpjgId = cpjgId;
	}


	/**
	 * @return the jgName
	 */
	public String getJgName() {
		return jgName;
	}


	/**
	 * @param jgName the jgName to set
	 */
	public void setJgName(String jgName) {
		this.jgName = jgName;
	}


	/**
	 * @return the cpgh
	 */
	public String getCpgh() {
		return cpgh;
	}


	/**
	 * @param cpgh the cpgh to set
	 */
	public void setCpgh(String cpgh) {
		this.cpgh = cpgh;
	}



	public JzglVo() {
		super();
	}


	public String dateToStringConvert(Date date) {
		if(date!=null) {
			return DateUtil.format(date, "yyyy-MM-dd HH:mm:ss");
		}
		return "";
	}
	

}