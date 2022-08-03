package com.fc.v2.model.custom;

import com.fc.v2.model.auto.TsysPermission;

import java.util.List;

/**
 * 权限树
 * @author fuce 
 * @date: 2018年9月8日 下午6:40:29
 */
public class PermissionTreeModelVo {
	private TsysPermission tsysPermission;
	
	List<PermissionTreeModelVo> childList;//子类

	public TsysPermission getTsysPermission() {
		return tsysPermission;
	}

	public void setTsysPermission(TsysPermission tsysPermission) {
		this.tsysPermission = tsysPermission;
	}

	public List<PermissionTreeModelVo> getChildList() {
		return childList;
	}

	public void setChildList(List<PermissionTreeModelVo> childList) {
		this.childList = childList;
	}

	public PermissionTreeModelVo(TsysPermission tsysPermission,
								 List<PermissionTreeModelVo> childList) {
		super();
		this.tsysPermission = tsysPermission;
		this.childList = childList;
	}

	public PermissionTreeModelVo() {
		super();
	}
	

	

	
	
}
