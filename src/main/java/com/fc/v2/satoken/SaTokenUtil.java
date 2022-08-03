package com.fc.v2.satoken;

import com.fc.v2.model.auto.TsysUser;

import cn.dev33.satoken.stp.StpUtil;

/**
 * 封装 Sa-Token 常用操作 
 * @author kong
 *
 */
public class SaTokenUtil {

	/**
     * 获取登录用户model
     */
    public static TsysUser getUser() {
    	return (TsysUser)StpUtil.getSession().get("user");
    }
    
    /**
     * set用户
     */
    public static void setUser(TsysUser user) {
    	StpUtil.getSession().set("user", user);
    }

  /**
   * 获取登录用户id
   */
	public static String getUserId() {
		return StpUtil.getLoginIdAsString();
	}
    
    /**
     * 获取登录用户name
     */
    public static String getLoginName() {
        TsysUser tsysUser = getUser();
        if (tsysUser == null){
            throw new RuntimeException("用户不存在！");
        }
        return tsysUser.getUsername();
    }

    /**
     * 获取登录用户ip
     * @return
     * @author fuce
     * @Date 2019年11月21日 上午9:58:26
     */
    public static String getIp() {
        return StpUtil.getTokenSession().getString("login_ip");
    }
    
}
