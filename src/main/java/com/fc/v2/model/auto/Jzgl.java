package com.fc.v2.model.auto;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import cn.hutool.core.date.DateUtil;
import java.util.Date;

public class Jzgl implements Serializable {
    private static final long serialVersionUID = 1L;

	
	@ApiModelProperty(value = "主键")
	private String id;
	
	@ApiModelProperty(value = "介质编码")
	private String jzbm;
	
	@ApiModelProperty(value = "介质名称")
	private String jzmc;
	
	@ApiModelProperty(value = "介质条码或者二维码")
	private String jztm;
	
	@ApiModelProperty(value = "型号")
	private String xh;
	
	@ApiModelProperty(value = "所属分类")
	private String ssfl;
	
	@ApiModelProperty(value = "所属厂家")
	private String sscj;
	
	@ApiModelProperty(value = "批次号")
	private String pch;
	
	@ApiModelProperty(value = "最低库存")
	private String zdkc;
	
	@ApiModelProperty(value = "最高库存")
	private String zgkc;
	
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
	
	@JsonProperty("id")
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id =  id;
	}
	@JsonProperty("jzbm")
	public String getJzbm() {
		return jzbm;
	}

	public void setJzbm(String jzbm) {
		this.jzbm =  jzbm;
	}
	@JsonProperty("jzmc")
	public String getJzmc() {
		return jzmc;
	}

	public void setJzmc(String jzmc) {
		this.jzmc =  jzmc;
	}
	@JsonProperty("jztm")
	public String getJztm() {
		return jztm;
	}

	public void setJztm(String jztm) {
		this.jztm =  jztm;
	}
	@JsonProperty("xh")
	public String getXh() {
		return xh;
	}

	public void setXh(String xh) {
		this.xh =  xh;
	}
	@JsonProperty("ssfl")
	public String getSsfl() {
		return ssfl;
	}

	public void setSsfl(String ssfl) {
		this.ssfl =  ssfl;
	}
	@JsonProperty("sscj")
	public String getSscj() {
		return sscj;
	}

	public void setSscj(String sscj) {
		this.sscj =  sscj;
	}
	@JsonProperty("pch")
	public String getPch() {
		return pch;
	}

	public void setPch(String pch) {
		this.pch =  pch;
	}
	@JsonProperty("zdkc")
	public String getZdkc() {
		return zdkc;
	}

	public void setZdkc(String zdkc) {
		this.zdkc =  zdkc;
	}
	@JsonProperty("zgkc")
	public String getZgkc() {
		return zgkc;
	}

	public void setZgkc(String zgkc) {
		this.zgkc =  zgkc;
	}
	@JsonProperty("jzType")
	public Integer getJzType() {
		return jzType;
	}

	public void setJzType(Integer jzType) {
		this.jzType =  jzType;
	}
	@JsonProperty("createTime")
	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime =  createTime;
	}
	@JsonProperty("createUserId")
	public String getCreateUserId() {
		return createUserId;
	}

	public void setCreateUserId(String createUserId) {
		this.createUserId =  createUserId;
	}
	@JsonProperty("createUserName")
	public String getCreateUserName() {
		return createUserName;
	}

	public void setCreateUserName(String createUserName) {
		this.createUserName =  createUserName;
	}
	@JsonProperty("ssjgId")
	public String getSsjgId() {
		return ssjgId;
	}

	public void setSsjgId(String ssjgId) {
		this.ssjgId =  ssjgId;
	}
	@JsonProperty("dpState")
	public Integer getDpState() {
		return dpState;
	}

	public void setDpState(Integer dpState) {
		this.dpState =  dpState;
	}
	@JsonProperty("cpjgId")
	public String getCpjgId() {
		return cpjgId;
	}

	public void setCpjgId(String cpjgId) {
		this.cpjgId =  cpjgId;
	}

																																		
	public Jzgl(String id,String jzbm,String jzmc,String jztm,String xh,String ssfl,String sscj,String pch,String zdkc,String zgkc,Integer jzType,Date createTime,String createUserId,String createUserName,String ssjgId,Integer dpState,String cpjgId) {
				
		this.id = id;
				
		this.jzbm = jzbm;
				
		this.jzmc = jzmc;
				
		this.jztm = jztm;
				
		this.xh = xh;
				
		this.ssfl = ssfl;
				
		this.sscj = sscj;
				
		this.pch = pch;
				
		this.zdkc = zdkc;
				
		this.zgkc = zgkc;
				
		this.jzType = jzType;
				
		this.createTime = createTime;
				
		this.createUserId = createUserId;
				
		this.createUserName = createUserName;
				
		this.ssjgId = ssjgId;
				
		this.dpState = dpState;
				
		this.cpjgId = cpjgId;
				
	}

	public Jzgl() {
	    super();
	}

	public String dateToStringConvert(Date date) {
		if(date!=null) {
			return DateUtil.format(date, "yyyy-MM-dd HH:mm:ss");
		}
		return "";
	}
	

}