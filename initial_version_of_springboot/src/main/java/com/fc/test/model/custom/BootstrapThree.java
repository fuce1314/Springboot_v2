package com.fc.test.model.custom;

import java.util.List;

/**
 * 前台bootstrap需要的树
 * @author fuce 
 * @date: 2018年9月8日 下午10:47:07
 */
public class BootstrapThree {
	private String text;//文字
	private String icon;//图标
	private String data;//数据
	private String id;
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
	public BootstrapThree(String text, String icon, String data, String id,
			List<BootstrapThree> nodes) {
		super();
		this.text = text;
		this.icon = icon;
		this.data = data;
		this.id = id;
		this.nodes = nodes;
	}
	
	
}
