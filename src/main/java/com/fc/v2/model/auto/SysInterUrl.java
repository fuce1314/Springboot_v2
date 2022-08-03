package com.fc.v2.model.auto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

/**
 * 拦截url表 SysInterUrl 
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2020-01-05 01:48:22
 */
 @ApiModel(value="SysInterUrl", description="拦截url表")
public class SysInterUrl implements Serializable {

	private static final long serialVersionUID = 1L;
	
		
	/** 主键 **/
	@ApiModelProperty(value = "主键") 
    private String id;
		
	/** 拦截名称 **/
	@ApiModelProperty(value = "拦截名称") 
    private String interName;
		
	/** 拦截url **/
	@ApiModelProperty(value = "拦截url") 
    private String url;
		
	/** 类型 **/
	@ApiModelProperty(value = "类型") 
    private Integer type;
		
		
	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
	 
			
	public String getInterName() {
        return interName;
    }

    public void setInterName(String interName) {
        this.interName = interName;
    }
	 
			
	public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
	 
			
	public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
	 
			
	public SysInterUrl() {
        super();
    }
    
																						
	public SysInterUrl(String id,String interName,String url,Integer type) {
	
		this.id = id;
		this.interName = interName;
		this.url = url;
		this.type = type;
		
	}
	
}