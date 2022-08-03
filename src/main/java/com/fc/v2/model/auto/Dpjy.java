package com.fc.v2.model.auto;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import cn.hutool.core.date.DateUtil;
import java.util.Date;

public class Dpjy implements Serializable {
    private static final long serialVersionUID = 1L;

	
	@ApiModelProperty(value = "主键")
	private String id;
	
	@ApiModelProperty(value = "介质id集合")
	private String jzIds;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@ApiModelProperty(value = "借阅时间")
	private Date jyrq;
	
	@ApiModelProperty(value = "借阅单号")
	private String jydh;
	
	@ApiModelProperty(value = "借阅类型")
	private Integer jyType;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
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
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@ApiModelProperty(value = "审核人日期")
	private Date shRq;
	
	@ApiModelProperty(value = "备注")
	private String remarks;
	
	@ApiModelProperty(value = "借阅数量")
	private Integer jynum;
	
	@ApiModelProperty(value = "对象代号")
	private String dxdh;
	
	@ApiModelProperty(value = "承办部门")
	private String cbbm;
	
	@ApiModelProperty(value = "借用单位")
	private String jsdw;
	
	@ApiModelProperty(value = "借用人电话")
	private String jyrphone;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@ApiModelProperty(value = "接收人收到时间")
	private Date jssj;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@ApiModelProperty(value = "留置起时间")
	private Date lzstarTime;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@ApiModelProperty(value = "留置结束时间")
	private Date lzendTime;
	
	@ApiModelProperty(value = "资料清单")
	private String zlqdText;
	
	@ApiModelProperty(value = "资料清单图片")
	private String zlqdImage;
	
	@JsonProperty("id")
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id =  id;
	}
	@JsonProperty("jzIds")
	public String getJzIds() {
		return jzIds;
	}

	public void setJzIds(String jzIds) {
		this.jzIds =  jzIds;
	}
	@JsonProperty("jyrq")
	public Date getJyrq() {
		return jyrq;
	}

	public void setJyrq(Date jyrq) {
		this.jyrq =  jyrq;
	}
	@JsonProperty("jydh")
	public String getJydh() {
		return jydh;
	}

	public void setJydh(String jydh) {
		this.jydh =  jydh;
	}
	@JsonProperty("jyType")
	public Integer getJyType() {
		return jyType;
	}

	public void setJyType(Integer jyType) {
		this.jyType =  jyType;
	}
	@JsonProperty("jyqx")
	public Date getJyqx() {
		return jyqx;
	}

	public void setJyqx(Date jyqx) {
		this.jyqx =  jyqx;
	}
	@JsonProperty("jyrName")
	public String getJyrName() {
		return jyrName;
	}

	public void setJyrName(String jyrName) {
		this.jyrName =  jyrName;
	}
	@JsonProperty("jyrId")
	public String getJyrId() {
		return jyrId;
	}

	public void setJyrId(String jyrId) {
		this.jyrId =  jyrId;
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
	@JsonProperty("shRq")
	public Date getShRq() {
		return shRq;
	}

	public void setShRq(Date shRq) {
		this.shRq =  shRq;
	}
	@JsonProperty("remarks")
	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks =  remarks;
	}
	@JsonProperty("jynum")
	public Integer getJynum() {
		return jynum;
	}

	public void setJynum(Integer jynum) {
		this.jynum =  jynum;
	}
	@JsonProperty("dxdh")
	public String getDxdh() {
		return dxdh;
	}

	public void setDxdh(String dxdh) {
		this.dxdh =  dxdh;
	}
	@JsonProperty("cbbm")
	public String getCbbm() {
		return cbbm;
	}

	public void setCbbm(String cbbm) {
		this.cbbm =  cbbm;
	}
	@JsonProperty("jsdw")
	public String getJsdw() {
		return jsdw;
	}

	public void setJsdw(String jsdw) {
		this.jsdw =  jsdw;
	}
	@JsonProperty("jyrphone")
	public String getJyrphone() {
		return jyrphone;
	}

	public void setJyrphone(String jyrphone) {
		this.jyrphone =  jyrphone;
	}
	@JsonProperty("jssj")
	public Date getJssj() {
		return jssj;
	}

	public void setJssj(Date jssj) {
		this.jssj =  jssj;
	}
	@JsonProperty("lzstarTime")
	public Date getLzstarTime() {
		return lzstarTime;
	}

	public void setLzstarTime(Date lzstarTime) {
		this.lzstarTime =  lzstarTime;
	}
	@JsonProperty("lzendTime")
	public Date getLzendTime() {
		return lzendTime;
	}

	public void setLzendTime(Date lzendTime) {
		this.lzendTime =  lzendTime;
	}
	@JsonProperty("zlqdText")
	public String getZlqdText() {
		return zlqdText;
	}

	public void setZlqdText(String zlqdText) {
		this.zlqdText =  zlqdText;
	}
	@JsonProperty("zlqdImage")
	public String getZlqdImage() {
		return zlqdImage;
	}

	public void setZlqdImage(String zlqdImage) {
		this.zlqdImage =  zlqdImage;
	}

																																																
	public Dpjy(String id,String jzIds,Date jyrq,String jydh,Integer jyType,Date jyqx,String jyrName,String jyrId,String zdrId,String zdrName,String shrId,String shrName,Date shRq,String remarks,Integer jynum,String dxdh,String cbbm,String jsdw,String jyrphone,Date jssj,Date lzstarTime,Date lzendTime,String zlqdText,String zlqdImage) {
				
		this.id = id;
				
		this.jzIds = jzIds;
				
		this.jyrq = jyrq;
				
		this.jydh = jydh;
				
		this.jyType = jyType;
				
		this.jyqx = jyqx;
				
		this.jyrName = jyrName;
				
		this.jyrId = jyrId;
				
		this.zdrId = zdrId;
				
		this.zdrName = zdrName;
				
		this.shrId = shrId;
				
		this.shrName = shrName;
				
		this.shRq = shRq;
				
		this.remarks = remarks;
				
		this.jynum = jynum;
				
		this.dxdh = dxdh;
				
		this.cbbm = cbbm;
				
		this.jsdw = jsdw;
				
		this.jyrphone = jyrphone;
				
		this.jssj = jssj;
				
		this.lzstarTime = lzstarTime;
				
		this.lzendTime = lzendTime;
				
		this.zlqdText = zlqdText;
				
		this.zlqdImage = zlqdImage;
				
	}

	public Dpjy() {
	    super();
	}

	public String dateToStringConvert(Date date) {
		if(date!=null) {
			return DateUtil.format(date, "yyyy-MM-dd HH:mm:ss");
		}
		return "";
	}
	

}