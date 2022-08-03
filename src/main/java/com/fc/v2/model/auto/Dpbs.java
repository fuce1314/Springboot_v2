package com.fc.v2.model.auto;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import cn.hutool.core.date.DateUtil;
import java.util.Date;

public class Dpbs implements Serializable {
    private static final long serialVersionUID = 1L;

	
	@ApiModelProperty(value = "主键")
	private String id;
	
	@ApiModelProperty(value = "报损单号")
	private String bsdh;
	
	@ApiModelProperty(value = "介质ids")
	private String jzIds;
	
	@ApiModelProperty(value = "审核状态")
	private Integer shState;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@ApiModelProperty(value = "申请日期")
	private Date sqrq;
	
	@ApiModelProperty(value = "申请人id")
	private String sqrId;
	
	@ApiModelProperty(value = "申请人名字")
	private String sqrName;
	
	@ApiModelProperty(value = "制单人id")
	private String zdrId;
	
	@ApiModelProperty(value = "制单人名字")
	private String zdrName;
	
	@ApiModelProperty(value = "审核人id")
	private String shrId;
	
	@ApiModelProperty(value = "审核人名字")
	private String shrName;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@ApiModelProperty(value = "审核日期")
	private Date shrq;
	
	@ApiModelProperty(value = "备注")
	private String bz;
	
	@JsonProperty("id")
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id =  id;
	}
	@JsonProperty("bsdh")
	public String getBsdh() {
		return bsdh;
	}

	public void setBsdh(String bsdh) {
		this.bsdh =  bsdh;
	}
	@JsonProperty("jzIds")
	public String getJzIds() {
		return jzIds;
	}

	public void setJzIds(String jzIds) {
		this.jzIds =  jzIds;
	}
	@JsonProperty("shState")
	public Integer getShState() {
		return shState;
	}

	public void setShState(Integer shState) {
		this.shState =  shState;
	}
	@JsonProperty("sqrq")
	public Date getSqrq() {
		return sqrq;
	}

	public void setSqrq(Date sqrq) {
		this.sqrq =  sqrq;
	}
	@JsonProperty("sqrId")
	public String getSqrId() {
		return sqrId;
	}

	public void setSqrId(String sqrId) {
		this.sqrId =  sqrId;
	}
	@JsonProperty("sqrName")
	public String getSqrName() {
		return sqrName;
	}

	public void setSqrName(String sqrName) {
		this.sqrName =  sqrName;
	}
	@JsonProperty("zdrId")
	public String getZdrId() {
		return zdrId;
	}

	public void setZdrId(String zdrId) {
		this.zdrId =  zdrId;
	}
	@JsonProperty("zdrName")
	public String getZdrName() {
		return zdrName;
	}

	public void setZdrName(String zdrName) {
		this.zdrName =  zdrName;
	}
	@JsonProperty("shrId")
	public String getShrId() {
		return shrId;
	}

	public void setShrId(String shrId) {
		this.shrId =  shrId;
	}
	@JsonProperty("shrName")
	public String getShrName() {
		return shrName;
	}

	public void setShrName(String shrName) {
		this.shrName =  shrName;
	}
	@JsonProperty("shrq")
	public Date getShrq() {
		return shrq;
	}

	public void setShrq(Date shrq) {
		this.shrq =  shrq;
	}
	@JsonProperty("bz")
	public String getBz() {
		return bz;
	}

	public void setBz(String bz) {
		this.bz =  bz;
	}

																										
	public Dpbs(String id,String bsdh,String jzIds,Integer shState,Date sqrq,String sqrId,String sqrName,String zdrId,String zdrName,String shrId,String shrName,Date shrq,String bz) {
				
		this.id = id;
				
		this.bsdh = bsdh;
				
		this.jzIds = jzIds;
				
		this.shState = shState;
				
		this.sqrq = sqrq;
				
		this.sqrId = sqrId;
				
		this.sqrName = sqrName;
				
		this.zdrId = zdrId;
				
		this.zdrName = zdrName;
				
		this.shrId = shrId;
				
		this.shrName = shrName;
				
		this.shrq = shrq;
				
		this.bz = bz;
				
	}

	public Dpbs() {
	    super();
	}

	public String dateToStringConvert(Date date) {
		if(date!=null) {
			return DateUtil.format(date, "yyyy-MM-dd HH:mm:ss");
		}
		return "";
	}
	

}
