package com.fc.test.model.auto;

import java.io.Serializable;

public class TsysPermissionRole implements Serializable {
    private String id;

    private String roleId;

    private String permissionId;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId == null ? null : roleId.trim();
    }

    public String getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(String permissionId) {
        this.permissionId = permissionId == null ? null : permissionId.trim();
    }

	public TsysPermissionRole(String id, String roleId, String permissionId) {
		super();
		this.id = id;
		this.roleId = roleId;
		this.permissionId = permissionId;
	}

	public TsysPermissionRole() {
		super();
	}
    
    
}