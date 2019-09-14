package com.fc.test.model.custom;

import java.util.List;
import java.util.Map;

/**
 * 前台bootstrap需要的树
 * @author fuce 
 * @date: 2018年9月8日 下午10:47:07
 */
public class BootstrapTree {
	private String text;//文字
	private String icon;//图标
	private String data;//数据
	private String id;//id
	private String url;//url
	private Integer isBlank;//是否跳转
	private Map<String,Object> state;//选中参数
	private List<BootstrapTree> nodes;//子元素
	private String permKey;//权限key
	private Integer visible;//是否显示
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public List<BootstrapTree> getNodes() {
		return nodes;
	}
	public void setNodes(List<BootstrapTree> nodes) {
		this.nodes = nodes;
	}
	public BootstrapTree() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Map<String, Object> getState() {
		return state;
	}
	public void setState(Map<String, Object> state) {
		this.state = state;
	}

	
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public BootstrapTree(String text, String icon, String data, String id,String url,Integer isBlank,
			List<BootstrapTree> nodes,String permKey,Integer visible) {
		super();
		this.text = text;
		this.icon = icon;
		this.data = data;
		this.id = id;
		this.url=url;
		this.isBlank=isBlank;
		this.nodes = nodes;
		this.permKey=permKey;
		this.visible=visible;
	}
	public Integer getIsBlank() {
		return isBlank;
	}
	public void setIsBlank(Integer isBlank) {
		this.isBlank = isBlank;
	}
	public String getPermKey() {
		return permKey;
	}
	public void setPermKey(String permKey) {
		this.permKey = permKey;
	}
	public Integer getVisible() {
		return visible;
	}
	public void setVisible(Integer visible) {
		this.visible = visible;
	}
	
}
