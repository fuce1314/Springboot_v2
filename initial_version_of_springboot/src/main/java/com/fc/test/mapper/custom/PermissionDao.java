package com.fc.test.mapper.custom;

import java.util.List;

import com.fc.test.model.auto.TsysPremission;

public interface  PermissionDao {
	 public List<TsysPremission> findAll();
	 public List<TsysPremission> findByAdminUserId(String userId);
	 
	 /**
	  * 根据角色id查询权限
	  * @param roleid
	  * @return
	  */
	 public List<TsysPremission> queryRoleId(String roleid);
	 
	 
}
