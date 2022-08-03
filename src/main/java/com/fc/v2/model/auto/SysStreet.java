package com.fc.v2.model.auto;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 街道设置 SysStreet 
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2019-10-05 01:02:28
 */
public class SysStreet implements Serializable {

	private static final long serialVersionUID = 1L;
	
		
	/** 自增列 **/
	private Integer id;
		
	/** 街道代码 **/
	private String streetCode;
		
	/** 父级区代码 **/
	private String areaCode;
		
	/** 街道名称 **/
	private String streetName;
		
	/** 简称 **/
	private String shortName;
		
	/** 经度 **/
	private String lng;
		
	/** 纬度 **/
	private String lat;
		
	/** 排序 **/
	private Integer sort;
		
	/** 创建时间 **/
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date gmtCreate;
		
	/** 修改时间 **/
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date gmtModified;
		
	/** 备注 **/
	private String memo;
		
	/** 状态 **/
	private Integer dataState;
		
		
	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
	 
			
	public String getStreetCode() {
        return streetCode;
    }

    public void setStreetCode(String streetCode) {
        this.streetCode = streetCode;
    }
	 
			
	public String getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode;
    }
	 
			
	public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }
	 
			
	public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
    }
	 
			
	public String getLng() {
        return lng;
    }

    public void setLng(String lng) {
        this.lng = lng;
    }
	 
			
	public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }
	 
			
	public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }
	 
			
	public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }
	 
			
	public Date getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }
	 
			
	public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }
	 
			
	public Integer getDataState() {
        return dataState;
    }

    public void setDataState(Integer dataState) {
        this.dataState = dataState;
    }
	 
			
	public SysStreet() {
        super();
    }
    
																																																														
	public SysStreet(Integer id,String streetCode,String areaCode,String streetName,String shortName,String lng,String lat,Integer sort,Date gmtCreate,Date gmtModified,String memo,Integer dataState) {
	
		this.id = id;
		this.streetCode = streetCode;
		this.areaCode = areaCode;
		this.streetName = streetName;
		this.shortName = shortName;
		this.lng = lng;
		this.lat = lat;
		this.sort = sort;
		this.gmtCreate = gmtCreate;
		this.gmtModified = gmtModified;
		this.memo = memo;
		this.dataState = dataState;
		
	}
	
}