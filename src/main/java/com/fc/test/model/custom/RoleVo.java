package com.fc.test.model.custom;

import com.fc.test.model.auto.TsysRole;

/**
 * 角色自定义数据
 * @author fuce 
 * @date: 2018年9月8日 上午12:18:59
 */
public class RoleVo extends TsysRole{
	private static final long serialVersionUID = 1L;
	private boolean ischeck;//判断是否又这个权限
	
	public boolean isIscheck() {
		return ischeck;
	}
	public void setIscheck(boolean ischeck) {
		this.ischeck = ischeck;
	}
	
	public RoleVo() {
		super();
	}
	public RoleVo(String id, String name,Boolean ischeck) {
		super(id, name);
		this.ischeck=ischeck;
	}
	
}
