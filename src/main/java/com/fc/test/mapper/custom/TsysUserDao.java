package com.fc.test.mapper.custom;

import java.util.List;
import com.fc.test.model.auto.TsysUser;

/**
 * @ClassName: TsysUserDao
 * @author fuce
 * @date 2018年8月25日
 *
 */
public interface TsysUserDao {
	/**
	 * 根据用户名字查询用户
	 * @param username
	 * @return
	 */
	public TsysUser queryUserName(String username);
	
	/**
	 * 查询用户详情
	 * String name 如果没用 注解@Param("") 它到mapper里面为_parameter
	 * @return
	 * @author fuce
	 * @Date 2020年12月6日 下午9:02:20
	 */
	public List<TsysUser> queryUserInfo(String username);
}
