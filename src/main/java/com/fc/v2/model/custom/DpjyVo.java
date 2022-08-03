package com.fc.v2.model.custom;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fc.v2.model.auto.Dpjy;
import io.swagger.annotations.ApiModelProperty;

public class DpjyVo implements Serializable {

	private static final long serialVersionUID = 1L;

	@ApiModelProperty(value = "主键")
	private String id;

	@ApiModelProperty(value = "介质ids")
	private String jzIds;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	@ApiModelProperty(value = "借阅时间")
	private Date jyrq;

	@ApiModelProperty(value = "借阅单号")
	private String jydh;

	@ApiModelProperty(value = "借阅类型")
	private Integer jyType;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	@ApiModelProperty(value = "借用期限")
	private Date jyqx;

	@ApiModelProperty(value = "借用人名字")
	private String jyrName;

	@ApiModelProperty(value = "借用人id")
	private String jyrId;

	@ApiModelProperty(value = "制单人id")
	private String zdrId;

	@ApiModelProperty(value = "制单人名字")
	private String zdrName;

	@ApiModelProperty(value = "审核人id")
	private String shrId;

	@ApiModelProperty(value = "审核人名字")
	private String shrName;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	@ApiModelProperty(value = "审核人日期")
	private Date shRq;

	@ApiModelProperty(value = "备注")
	private String remarks;

	@ApiModelProperty(value = "借阅数量")
	private Integer jynum;

	@ApiModelProperty(value = "介质名称")

	private String jzmc;

	@ApiModelProperty(value = "介质编码")
	private String jzbm;
	
	
	
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
	 * @return the jzId
	 */
	public String getJzIds() {
		return jzIds;
	}



	/**
	 * @param jzId the jzId to set
	 */
	public void setJzIds(String jzIds) {
		this.jzIds = jzIds;
	}



	/**
	 * @return the jyrq
	 */
	public Date getJyrq() {
		return jyrq;
	}



	/**
	 * @param jyrq the jyrq to set
	 */
	public void setJyrq(Date jyrq) {
		this.jyrq = jyrq;
	}



	/**
	 * @return the jydh
	 */
	public String getJydh() {
		return jydh;
	}



	/**
	 * @param jydh the jydh to set
	 */
	public void setJydh(String jydh) {
		this.jydh = jydh;
	}



	/**
	 * @return the jyType
	 */
	public Integer getJyType() {
		return jyType;
	}



	/**
	 * @param jyType the jyType to set
	 */
	public void setJyType(Integer jyType) {
		this.jyType = jyType;
	}



	/**
	 * @return the jyqx
	 */
	public Date getJyqx() {
		return jyqx;
	}



	/**
	 * @param jyqx the jyqx to set
	 */
	public void setJyqx(Date jyqx) {
		this.jyqx = jyqx;
	}



	/**
	 * @return the jyrName
	 */
	public String getJyrName() {
		return jyrName;
	}



	/**
	 * @param jyrName the jyrName to set
	 */
	public void setJyrName(String jyrName) {
		this.jyrName = jyrName;
	}



	/**
	 * @return the jyrId
	 */
	public String getJyrId() {
		return jyrId;
	}



	/**
	 * @param jyrId the jyrId to set
	 */
	public void setJyrId(String jyrId) {
		this.jyrId = jyrId;
	}



	/**
	 * @return the zdrId
	 */
	public String getZdrId() {
		return zdrId;
	}



	/**
	 * @param zdrId the zdrId to set
	 */
	public void setZdrId(String zdrId) {
		this.zdrId = zdrId;
	}



	/**
	 * @return the zdrName
	 */
	public String getZdrName() {
		return zdrName;
	}



	/**
	 * @param zdrName the zdrName to set
	 */
	public void setZdrName(String zdrName) {
		this.zdrName = zdrName;
	}



	/**
	 * @return the shrId
	 */
	public String getShrId() {
		return shrId;
	}



	/**
	 * @param shrId the shrId to set
	 */
	public void setShrId(String shrId) {
		this.shrId = shrId;
	}



	/**
	 * @return the shrName
	 */
	public String getShrName() {
		return shrName;
	}



	/**
	 * @param shrName the shrName to set
	 */
	public void setShrName(String shrName) {
		this.shrName = shrName;
	}



	/**
	 * @return the shRq
	 */
	public Date getShRq() {
		return shRq;
	}



	/**
	 * @param shRq the shRq to set
	 */
	public void setShRq(Date shRq) {
		this.shRq = shRq;
	}



	/**
	 * @return the remarks
	 */
	public String getRemarks() {
		return remarks;
	}



	/**
	 * @param remarks the remarks to set
	 */
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}



	/**
	 * @return the jynum
	 */
	public Integer getJynum() {
		return jynum;
	}



	/**
	 * @param jynum the jynum to set
	 */
	public void setJynum(Integer jynum) {
		this.jynum = jynum;
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



	public DpjyVo() {
		super();
	}

}