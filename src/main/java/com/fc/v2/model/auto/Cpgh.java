package com.fc.v2.model.auto;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import cn.hutool.core.date.DateUtil;
import java.util.Date;

public class Cpgh implements Serializable {
    private static final long serialVersionUID = 1L;

	
	@ApiModelProperty(value = "主键")
	private String id;
	
	@ApiModelProperty(value = "磁盘柜号")
	private String cpgh;
	
	@ApiModelProperty(value = "备注")
	private String remarks;
	
	@ApiModelProperty(value = "最小数量")
	private Integer minNum;
	
	@ApiModelProperty(value = "最大数量")
	private Integer maxNum;
	
	@ApiModelProperty(value = "预警值")
	private Integer earlyWarNum;
	
	@ApiModelProperty(value = "所属机柜")
	private String ssjg;
	
	@JsonProperty("id")
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id =  id;
	}
	@JsonProperty("cpgh")
	public String getCpgh() {
		return cpgh;
	}

	public void setCpgh(String cpgh) {
		this.cpgh =  cpgh;
	}
	@JsonProperty("remarks")
	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks =  remarks;
	}
	@JsonProperty("minNum")
	public Integer getMinNum() {
		return minNum;
	}

	public void setMinNum(Integer minNum) {
		this.minNum =  minNum;
	}
	@JsonProperty("maxNum")
	public Integer getMaxNum() {
		return maxNum;
	}

	public void setMaxNum(Integer maxNum) {
		this.maxNum =  maxNum;
	}
	@JsonProperty("earlyWarNum")
	public Integer getEarlyWarNum() {
		return earlyWarNum;
	}

	public void setEarlyWarNum(Integer earlyWarNum) {
		this.earlyWarNum =  earlyWarNum;
	}
	@JsonProperty("ssjg")
	public String getSsjg() {
		return ssjg;
	}

	public void setSsjg(String ssjg) {
		this.ssjg =  ssjg;
	}

														
	public Cpgh(String id,String cpgh,String remarks,Integer minNum,Integer maxNum,Integer earlyWarNum,String ssjg) {
				
		this.id = id;
				
		this.cpgh = cpgh;
				
		this.remarks = remarks;
				
		this.minNum = minNum;
				
		this.maxNum = maxNum;
				
		this.earlyWarNum = earlyWarNum;
				
		this.ssjg = ssjg;
				
	}

	public Cpgh() {
	    super();
	}

	

}