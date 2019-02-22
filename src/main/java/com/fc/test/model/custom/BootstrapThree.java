package com.fc.test.model.custom;

import java.util.List;
import java.util.Map;

/**
 * 前台bootstrap需要的树
 * @author fuce 
 * @date: 2018年9月8日 下午10:47:07
 */
public class BootstrapThree {
	private String text;//文字
	private String icon;//图标
	private String data;//数据
	private String id;//id
	private String url;//url
	private Map<String,Object> state;//选中参数
	private List<BootstrapThree> nodes;//子元素
	
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
	public List<BootstrapThree> getNodes() {
		return nodes;
	}
	public void setNodes(List<BootstrapThree> nodes) {
		this.nodes = nodes;
	}
	public BootstrapThree() {
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

	/**
	 * 这个初始化new为可以设置默认选中
	 * @param text
	 * @param icon
	 * @param data
	 * @param id
	 * @param nodes
	 * @param state  传入{"checked":true} 
	 */
	public BootstrapThree(String text, String icon, String data, String id,
			 List<BootstrapThree> nodes,String url,Map<String, Object> state) {
		super();
		this.text = text;
		this.icon = icon;
		this.data = data;
		this.id = id;
		this.url=url;
		this.state = state;
		this.nodes = nodes;
	}
	
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public BootstrapThree(String text, String icon, String data, String id,String url,
			List<BootstrapThree> nodes) {
		super();
		this.text = text;
		this.icon = icon;
		this.data = data;
		this.id = id;
		this.url=url;
		this.nodes = nodes;
	}
	
}
